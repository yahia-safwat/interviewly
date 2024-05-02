import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/handlers/fb_exception_handler.dart';
import '../../../../core/services/firebase/fb_firestore_service.dart';
import '../models/category_model.dart';

abstract class CategoryRemoteDataSource {
  Future<void> addCategory(CategoryModel category, String userId);
  Future<void> deleteCategory(CategoryModel category, String userId);
  Future<void> editCategory(CategoryModel category, String userId);
}

class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource {
  final FBFirestoreService fbFirestoreService;

  CategoryRemoteDataSourceImpl({required this.fbFirestoreService});

  @override
  Future<void> addCategory(CategoryModel category, String userId) async {
    try {
      // Create category document in a user document
      await fbFirestoreService.addDocument(
        collection: 'users/$userId/categories',
        documentId: category.id,
        data: category.toDocument(),
      );
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'An error occurred while adding category');
    }
  }

  @override
  Future<void> editCategory(CategoryModel category, String userId) async {
    try {
      // Update category in database
      await fbFirestoreService.updateDocument(
        collection: 'users/$userId/categories',
        documentId: category.id,
        newData: {'name': category.name},
      );
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'An error occurred while editing category');
    }
  }

  @override
  Future<void> deleteCategory(CategoryModel category, String userId) async {
    try {
      // Delete category from database
      await fbFirestoreService.deleteDocument(
        collection: 'users/$userId/categories',
        documentId: category.id,
      );
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'An error occurred while deleting category');
    }
  }
}
