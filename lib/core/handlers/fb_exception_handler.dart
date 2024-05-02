import 'package:firebase_auth/firebase_auth.dart';

class FBExceptionHandler {
  static String handleFBException(FirebaseException e) {
    // Check the plugin to determine the source of the exception
    switch (e.plugin) {
      case 'firebase_core':
        return _handleCoreException(e);
      case 'firebase_auth':
        return _handleAuthException(e);
      case 'firebase_storage':
        return _handleStorageException(e);
      case 'cloud_firestore':
        return _handleFirestoreException(e);

      // Add more cases for other Firebase services if needed
      default:
        return 'An unknown error occurred: ${e.message}';
    }
  }

  static String _handleCoreException(FirebaseException e) {
    switch (e.code) {
      case 'app-not-initialized':
        return 'The Firebase app has not been initialized.';
      case 'app-check-token-expired':
        return 'The Firebase app check token has expired.';
      default:
        return 'An unknown Core Firebase error occurred: ${e.message}';
    }
  }

  static String _handleAuthException(FirebaseException e) {
    switch (e.code) {
      case 'user-not-found':
        return 'The provided email is not associated with an account.';
      case 'wrong-password':
        return 'The email or password is incorrect.';
      case 'invalid-email':
        return 'The provided email address is invalid.';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email address but different sign-in credentials.';
      case 'email-already-in-use':
        return 'The email address is already in use by another account.';
      case 'operation-not-allowed':
        return 'The operation is not allowed. Please enable it in the Firebase console.';
      case 'too-many-requests':
        return 'We have blocked all requests from this device due to unusual activity. Try again later.';
      case 'invalid-credential':
        return 'The supplied auth credential is incorrect, malformed or has expired.';
      case 'weak-password':
        return 'The provided password is not strong enough. Please choose a stronger password.';
      case 'requires-recent-login':
        return 'This operation is sensitive and requires recent login. Please sign in again before retrying.';
      case 'user-disabled':
        return 'The user account has been disabled.';
      case 'invalid-verification-code':
        return 'The provided verification code is invalid.';
      case 'invalid-verification-id':
        return 'The verification ID used for sign-in with phone number is invalid.';
      case 'timeout':
        return 'The network request timed out.';
      default:
        return 'An unknown Firebase Auth error occurred: ${e.message}';
    }
  }

  static String _handleStorageException(FirebaseException e) {
    switch (e.code) {
      case 'canceled':
        return 'The file upload was cancelled.';
      case 'unauthorized':
        return 'You are not authorized to upload files.';
      case 'object-not-found':
        return 'The requested file does not exist.';
      case 'bucket-not-found':
        return 'The specified storage bucket does not exist.';
      case 'quota-exceeded':
        return 'Storage quota has been exceeded.';
      default:
        return 'An unknown Storage error occurred: ${e.message}';
    }
  }

  static String _handleFirestoreException(FirebaseException e) {
    switch (e.code) {
      case 'cancelled':
        return 'The operation was cancelled.';
      case 'unknown':
        return 'An unknown error occurred.';
      case 'invalid-argument':
        return 'Invalid argument provided.';
      case 'deadline-exceeded':
        return 'The deadline was exceeded.';
      case 'not-found':
        return 'The document was not found.';
      case 'already-exists':
        return 'The document already exists.';
      case 'permission-denied':
        return 'You do not have permission to execute this operation.';
      case 'resource-exhausted':
        return 'The resource was exhausted, for example, quota.';
      case 'failed-precondition':
        return 'The operation was rejected due to a failed precondition.';
      case 'aborted':
        return 'The operation was aborted.';
      case 'out-of-range':
        return 'The operation was attempted past the valid range.';
      case 'unimplemented':
        return 'The operation is not implemented or is not supported.';
      case 'internal':
        return 'Internal server error.';
      case 'unavailable':
        return 'The service is currently unavailable.';
      case 'data-loss':
        return 'Unrecoverable data loss or corruption.';
      default:
        return 'An unknown Firestore error occurred: ${e.message}';
    }
  }

  // ... Add methods for other Firebase services (e.g., Cloud Functions)
}
