import 'package:cloud_firestore/cloud_firestore.dart';

/// A service class for interacting with Firestore database.
class FBFirestoreService {
  final FirebaseFirestore _firestore;

  FBFirestoreService(this._firestore);

  /// Adds a document to the specified collection with the given document ID and data.
  Future<void> addDocument({
    required String collection,
    required String documentId,
    required Map<String, dynamic> data,
  }) async {
    await _firestore.collection(collection).doc(documentId).set(data);
  }

  /// Retrieves a document from the specified collection by its document ID.
  /// Returns the document data as a map.
  Future<Map<String, dynamic>> getDocument({
    required String collection,
    required String documentId,
  }) async {
    final document =
        await _firestore.collection(collection).doc(documentId).get();
    return document.data() ?? {};
  }

  /// Updates a document in the specified collection by its document ID with the provided new data.
  Future<void> updateDocument({
    required String collection,
    required String documentId,
    required Map<String, dynamic> newData,
  }) async {
    await _firestore.collection(collection).doc(documentId).update(newData);
  }

  /// Deletes a document from the specified collection by its document ID.
  Future<void> deleteDocument({
    required String collection,
    required String documentId,
  }) async {
    await _firestore.collection(collection).doc(documentId).delete();
  }

  /// Deletes a document and all its subcollections.
  Future<void> deleteDocumentAndSubcollections({
    required String collection,
    required String documentId,
    required List<String> subcollections,
  }) async {
    // Initialize a batch operation
    WriteBatch batch = _firestore.batch();

    // Reference to the document
    DocumentReference docRef =
        _firestore.collection(collection).doc(documentId);
    // Add the document itself to the batch delete
    batch.delete(docRef);

    // Loop through the subcollections
    for (String subcollection in subcollections) {
      // Reference to the subcollection
      CollectionReference subcolRef = docRef.collection(subcollection);

      // Get all the documents in the subcollection
      QuerySnapshot subcolSnapshot = await subcolRef.get();
      for (DocumentSnapshot doc in subcolSnapshot.docs) {
        // Add each document in the subcollection to the batch delete
        batch.delete(doc.reference);
      }
    }

    // Commit the batch
    await batch.commit();
  }

  /// Retrieves a collection from the specified collection path.
  /// Returns a list of document snapshots.
  Future<List<DocumentSnapshot>> getCollection(String collectionPath) async {
    final collection = await _firestore.collection(collectionPath).get();
    return collection.docs;
  }
}
