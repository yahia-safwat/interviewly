import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:interviewly/core/services/firebase/fb_firestore_service.dart';

import '../../../../../core/di/injection_container.dart';
import '../../models/user_model.dart';

// Get fbFirestoreService instance from sl (service locator)
final fbFirestoreService = sl<FBFirestoreService>();

Future<UserModel?> fetchUserData(String userid) async {
  // Get user document
  final Map<String, dynamic>? userDoc = await _getUserDocument(userid);

  if (userDoc != null && userDoc.isNotEmpty) {
    // Get user categories & questions
    final categories = await _getUserCategories(userid);
    final questions = await _getUserQuestions(userid);

    // Add categories & questions to user document
    userDoc['categories'] = categories;
    userDoc['questions'] = questions;

    // Return user model from document
    return UserModel.fromDocument(userDoc);
  }

  return null;
}

Future<Map<String, dynamic>?> _getUserDocument(String userId) async {
  // Get user document
  final userDoc = await fbFirestoreService.getDocument(
    collection: 'users',
    documentId: userId,
  );

  return userDoc;
}

Future<List<Map<String, dynamic>>> _getUserCategories(String userId) async {
  final String categoriesPath = 'users/$userId/categories';

  // Get user categories
  final List<DocumentSnapshot> categoriesSnapshot =
      await fbFirestoreService.getCollection(categoriesPath);

  return categoriesSnapshot
      .map((snapshot) => snapshot.data() as Map<String, dynamic>)
      .toList();
}

Future<List<Map<String, dynamic>>> _getUserQuestions(String userId) async {
  final String questionsPath = 'users/$userId/questions';

  // Get user questions
  final List<DocumentSnapshot> questionsSnapshot =
      await fbFirestoreService.getCollection(questionsPath);

  return questionsSnapshot
      .map((snapshot) => snapshot.data() as Map<String, dynamic>)
      .toList();
}

Future<UserModel?> updateUserEmailAddress(
  User fbUser,
  UserModel userModel,
) async {
  if (fbUser.email != userModel.email) {
    // Update the user document in Firestore
    await fbFirestoreService.updateDocument(
      collection: 'users',
      documentId: userModel.uid,
      newData: {'email': fbUser.email},
    );

    // Return a copy of userModel with updated email address
    return userModel.copyWith(email: fbUser.email);
  }

  // Return the original userModel
  return userModel;
}

Future<UserModel?> updateUserEmailVerificationStatus(
  User fbUser,
  UserModel userModel,
) async {
  if (fbUser.emailVerified && !userModel.isEmailVerified) {
    // Update the user document in Firestore
    await fbFirestoreService.updateDocument(
      collection: 'users',
      documentId: userModel.uid,
      newData: {'isEmailVerified': true},
    );
    // Return a copy of userModel with updated email verification status
    return userModel.copyWith(isEmailVerified: true);
  }

  // Return the original userModel
  return userModel;
}

// Store user data in Firestore
Future<void> storeUserData(UserModel user) {
  return fbFirestoreService.addDocument(
    collection: 'users',
    documentId: user.uid,
    data: user.toDocument(),
  );
}

// Create user model from Firebase user
UserModel createUserModelFromFbUser(User fbUser, String authProvider) {
  return UserModel(
    uid: fbUser.uid,
    email: fbUser.email ?? 'Unknown',
    displayName: fbUser.displayName ?? 'Unknown',
    authProvider: authProvider,
    isEmailVerified: fbUser.emailVerified,
    jobTitle: 'Unknown',
    isStudent: false,
    categoryModels: [],
    questionModels: [],
  );
}
