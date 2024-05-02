import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../core/errors/exceptions.dart';
import '../../../../../core/handlers/fb_exception_handler.dart';
import '../../../../../core/services/firebase/fb_auth_service.dart';
import '../../../../../core/services/firebase/fb_firestore_service.dart';
import '../../models/user_model.dart';
import 'auth_remote_helpers.dart';

abstract class AuthRemoteService {
  Stream<User?> get authStateChanges;
  Future<UserModel?> fetchUser(String usedId);
  Future<UserModel?> signInWithGoogle();
  Future<UserModel?> signIn(String email, String password);
  Future<UserModel?> signUp(UserModel user, String password);
  Future<void> signOut();
  Future<void> deleteUser(UserModel user);
  Future<UserModel?> editUser(UserModel user);
  Future<void> changeEmail(UserModel user, String newEmail);
  Future<void> changePassword(
    UserModel user,
    String currentPassword,
    String newPassword,
  );
  Future<void> forgetPassword(String email);
  Future<void> sendEmailVerification();
}

class AuthRemoteServiceImpl implements AuthRemoteService {
  final FBAuthService fbAuthService;
  final FBFirestoreService fbFirestoreService;

  AuthRemoteServiceImpl({
    required this.fbAuthService,
    required this.fbFirestoreService,
  });

  @override
  Stream<User?> get authStateChanges {
    try {
      return fbAuthService.authStateChanges;
    } catch (e) {
      throw FBException(message: 'An error occurred.');
    }
  }

  @override
  Future<UserModel?> fetchUser(String usedId) async {
    try {
      // Fetch user data from Firestore
      final UserModel? userModel = await fetchUserData(usedId);
      if (userModel != null) {
        // return user model
        return userModel;
      }
      return null;
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'An error occurred while fetching user');
    }
  }

  @override
  Future<UserModel?> signIn(String email, String password) async {
    try {
      final fbUser = await fbAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (fbUser != null) {
        // Fetch user data from Firestore
        UserModel? userModel = await fetchUserData(fbUser.uid);

        // Check and update the email address if necessary
        userModel = await updateUserEmailAddress(fbUser, userModel!);

        // Check and update email verification status if necessary
        userModel = await updateUserEmailVerificationStatus(fbUser, userModel!);

        // return user model
        return userModel;
      }
      return null;
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'An error occurred while signing in');
    }
  }

  @override
  Future<UserModel?> signUp(UserModel user, String password) async {
    try {
      final fbUser = await fbAuthService.signUpWithEmailAndPassword(
        email: user.email,
        password: password,
      );
      if (fbUser != null) {
        // Create user document in users collection
        await storeUserData(user.copyWith(uid: fbUser.uid));

        // Create user model
        final UserModel userModel = user.copyWith(uid: fbUser.uid);

        // return user model
        return userModel.copyWith(isEmailVerified: fbUser.emailVerified);
      }
      return null; // Firebase user is null, return null
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'An error occurred while signing up');
    }
  }

  @override
  Future<void> signOut() async {
    try {
      // sign out the current user
      await fbAuthService.signOut();
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'An error occurred while signing out');
    }
  }

  @override
  Future<UserModel?> editUser(UserModel user) async {
    try {
      // Check if the user need to re-authenticate
      final needsReauthentication = await fbAuthService.needsReauthentication(
        reauthThreshold: const Duration(days: 7),
      );
      if (!(needsReauthentication)) {
        // No need for reauthentication, continue with the edit

        // Update user document in Firestore
        await fbFirestoreService.updateDocument(
          collection: 'users',
          documentId: user.uid,
          newData: user.toDocument(),
        );

        // Return updated user
        return user;
      } else {
        throw FirebaseAuthException(code: 'requires-recent-login');
      }
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'An error occurred while editing user');
    }
  }

  @override
  Future<void> deleteUser(UserModel user) async {
    try {
      // Delete user from Firebase Auth
      await fbAuthService.deleteUser();

      // Delete user document from Firestore
      await fbFirestoreService.deleteDocumentAndSubcollections(
          collection: 'users',
          documentId: user.uid,
          subcollections: ['categories', 'questions']);
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'An error occurred while deleting user');
    }
  }

  @override
  Future<void> changeEmail(UserModel user, String newEmail) async {
    try {
      // Update user document in Firebase Auth
      await fbAuthService.changeEmail(newEmail: newEmail);
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'An error occurred while changing email');
    }
  }

  @override
  Future<void> changePassword(
    UserModel user,
    String currentPassword,
    String newPassword,
  ) async {
    try {
      // Check if the provided password matches the user's current password
      final isPasswordCorrect = await fbAuthService.checkPassword(
        email: user.email,
        password: currentPassword,
      );

      // If the password is correct, delete the user
      if (isPasswordCorrect) {
        // Update user document in Firebase Auth
        await fbAuthService.changePassword(newPassword: newPassword);
      } else {
        throw FirebaseAuthException(code: 'wrong-password');
      }
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'An error occurred while changing password');
    }
  }

  @override
  Future<void> forgetPassword(String email) async {
    try {
      await fbAuthService.sendPasswordResetEmail(email: email);
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'Failed to send password reset email');
    }
  }

  @override
  Future<void> sendEmailVerification() async {
    try {
      await fbAuthService.sendEmailVerification();
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'Failed to send email verification');
    }
  }

  @override
  Future<UserModel?> signInWithGoogle() async {
    try {
      final fbUser = await fbAuthService.signInWithGoogle();

      if (fbUser != null) {
        // Check if the user already exists in Firestore
        UserModel? user = await fetchUserData(fbUser.uid);

        // if user exist, return the existing user
        if (user != null) return user;

        // if user doesn't exist, create a new user
        final newUser = createUserModelFromFbUser(fbUser, 'Google');

        // Create user document in Firestore
        await storeUserData(newUser);

        // Return the newly created user model
        return newUser;
      }
      return null; // No user returned from sign-in
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'Failed to sign in with Google');
    }
  }
}
