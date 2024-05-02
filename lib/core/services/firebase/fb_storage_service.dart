import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

/// Service class for Firebase Cloud Storage operations.
class FBStorageService {
  final FirebaseStorage _firebaseStorage;

  FBStorageService(this._firebaseStorage);

  /// Uploads a file to Cloud Storage.
  Future<String?> uploadFile(String filePath, String destinationPath) async {
    final file = File(filePath); // Convert the URI to a File object
    final ref = _firebaseStorage.ref(destinationPath);
    final task = await ref.putFile(file);
    return await task.ref.getDownloadURL();
  }

  /// Deletes a file from Cloud Storage.
  Future<void> deleteFile(String path) async {
    await _firebaseStorage.ref(path).delete();
  }

  /// Retrieves the URL of a file from Cloud Storage.
  Future<String?> getFileURL(String path) async {
    return await _firebaseStorage.ref(path).getDownloadURL();
  }
}
