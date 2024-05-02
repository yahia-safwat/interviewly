import 'package:firebase_database/firebase_database.dart';

/// Service class for Firebase Realtime Database operations.
class FBDatabaseService {
  final DatabaseReference _databaseReference;

  FBDatabaseService(this._databaseReference);

  /// Retrieves data from the database at the specified path.
  Future<DataSnapshot?> getData(String path) async {
    final event = await _databaseReference.child(path).once();
    return event.snapshot;
  }

  /// Sets data in the database at the specified path.
  Future<void> setData(String path, Map<String, dynamic> data) async {
    await _databaseReference.child(path).set(data);
  }

  /// Updates data in the database at the specified path.
  Future<void> updateData(String path, Map<String, dynamic> data) async {
    await _databaseReference.child(path).update(data);
  }

  /// Deletes data from the database at the specified path.
  Future<void> deleteData(String path) async {
    await _databaseReference.child(path).remove();
  }
}
