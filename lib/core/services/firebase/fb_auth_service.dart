import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

/// Service class for Firebase Authentication operations.
class FBAuthService {
  final FirebaseAuth _firebaseAuth;

  FBAuthService(this._firebaseAuth);

  // Initialize social services for Google and Facebook sign-in.
  final GoogleSignIn googleSignIn = GoogleSignIn();
  // final facebookLogin = FacebookLogin();

  /// Streams the authentication state changes.
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  /// Streams the user changes.
  Stream<User?> get userChanges => _firebaseAuth.userChanges();

  /// Returns the current user.
  User? getCurrentUser() {
    final user = _firebaseAuth.currentUser;
    return user;
  }

  /// Sign in with google
  Future<User?> signInWithGoogle() async {
    // Trigger the Google sign-in flow
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create a new credential
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in with the credential
      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      // Return the authenticated user
      return userCredential.user;
    }
    return null;
  }

  /// Signs in the user with the provided email and password.
  Future<User?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user;
  }

  /// Signs up the user with the provided email and password.
  Future<User?> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user;
  }

  /// Updates the email for the current user.
  Future<void> changeEmail({required String newEmail}) async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      await user.verifyBeforeUpdateEmail(newEmail);
    }
  }

  /// Updates the password for the current user.
  Future<void> changePassword({required String newPassword}) async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      await user.updatePassword(newPassword);
    }
  }

  /// Checks if the provided password matches the user's current password.
  Future<bool> checkPassword({
    required String email,
    required String password,
  }) async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      // Create a credential using the provided email and password
      final AuthCredential credential = EmailAuthProvider.credential(
        email: email,
        password: password,
      );

      // Reauthenticate the user with the provided credential
      return await user
          .reauthenticateWithCredential(credential)
          .then((_) => true)
          .catchError((_) => false);
    } else {
      // If user is null, return false
      return false;
    }
  }

  /// Sends a password reset email to the user with the provided email.
  Future<void> sendPasswordResetEmail({required String email}) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  /// Verifies the password reset code.
  Future<bool> verifyPasswordResetCode({required String code}) async {
    await _firebaseAuth
        .verifyPasswordResetCode(code)
        .then((value) => true)
        .catchError((_) => false);

    // If the code is not valid, return false
    return false;
  }

  /// Sends an email verification to the user.
  Future<void> sendEmailVerification() async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      await user.sendEmailVerification();
    }
  }

  /// Signs out the current user.
  Future<void> signOut() async {
    await _firebaseAuth.signOut();

    // if user signed in with Google, sign out of Google as well
    ensureGoogleSignOut(googleSignIn);
  }

  /// Deletes the current user.
  Future<void> deleteUser() async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      await user.delete();

      // if user signed in with Google, sign out of Google as well
      ensureGoogleSignOut(googleSignIn);
    }
  }

  /// Ensures the user is signed out of Google to allow for a fresh authentication process.
  Future<void> ensureGoogleSignOut(GoogleSignIn googleSignIn) async {
    if (await googleSignIn.isSignedIn()) {
      await googleSignIn.signOut();
    }
  }

// Call this method before performing a sensitive operation
  Future<bool> needsReauthentication({
    Duration reauthThreshold = const Duration(days: 7),
  }) async {
    // Get the time since the user last signed in
    User? user = _firebaseAuth.currentUser;
    DateTime lastSignInTime = user?.metadata.lastSignInTime ?? DateTime.now();

    // Check if the time since last sign-in exceeds the threshold
    if (DateTime.now().difference(lastSignInTime) > reauthThreshold) {
      // User needs to reauthenticate
      return true;
    }
    // No need for reauthentication
    return false;
  }

  // Other authentication methods can be added here
}
