import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/handlers/fb_exception_handler.dart';
import '../../../../core/services/firebase/fb_firestore_service.dart';
import '../../../auth/domain/entities/user_entity.dart';
import '../models/subcategory_model.dart';

abstract class SubCategoryRemoteDataSource {
  Future<void> addSubCategory(
    UserEntity user,
    SubcategoryModel subCategory,
  );
  Future<void> editSubCategory(
    UserEntity user,
    SubcategoryModel subCategory,
  );
  Future<void> deleteSubCategory(
    UserEntity user,
    SubcategoryModel subCategory,
  );
}

class SubCategoryRemoteDataSourceImpl implements SubCategoryRemoteDataSource {
  final FBFirestoreService fbFirestoreService;

  SubCategoryRemoteDataSourceImpl({required this.fbFirestoreService});

  @override
  Future<void> addSubCategory(
      UserEntity user, SubcategoryModel subCategory) async {
    try {
      // Create a category document path
      final categoryDocumentPath =
          'users/${user.uid}/categories/${subCategory.parentCategoryId}';

      // Fetch the existing category document from Firestore
      final DocumentSnapshot categoryDocument =
          await FirebaseFirestore.instance.doc(categoryDocumentPath).get();

      // Retrieve the current subcategories list from the category document
      List<Map<String, dynamic>> subcategories =
          List.from(categoryDocument['subcategories']);

      // Create a new subcategory data
      final subcategoryData = subCategory.toJson();

      // Append the new subcategory data to the subcategories list
      subcategories.add(subcategoryData);

      // Update the category document with the modified subcategories list
      await FirebaseFirestore.instance.doc(categoryDocumentPath).update({
        'subcategories': subcategories,
      });
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'An error occurred while adding subcategory');
    }
  }

  @override
  Future<void> editSubCategory(
      UserEntity user, SubcategoryModel subCategory) async {
    try {
      // Create a category document path
      final categoryDocumentPath =
          'users/${user.uid}/categories/${subCategory.parentCategoryId}';

      // Fetch the existing category document from Firestore
      final DocumentSnapshot categoryDocument =
          await FirebaseFirestore.instance.doc(categoryDocumentPath).get();

      // Retrieve the current subcategories list from the category document
      List<Map<String, dynamic>> subcategories =
          List.from(categoryDocument['subcategories']);

      // Find the index of the subcategory to be edited
      int index =
          subcategories.indexWhere((sub) => sub['id'] == subCategory.id);

      if (index != -1) {
        // Update the subcategory data with the new values
        subcategories[index] = subCategory.toJson();

        // Update the category document with the modified subcategories list

        await FirebaseFirestore.instance.doc(categoryDocumentPath).update({
          'subcategories': subcategories,
        });
      } else {
        throw FBException(message: 'Subcategory not found');
      }
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(message: 'An error occurred while editing subcategory');
    }
  }

  @override
  Future<void> deleteSubCategory(
      UserEntity user, SubcategoryModel subCategory) async {
    try {
      // Create a category document path
      final categoryDocumentPath =
          'users/${user.uid}/categories/${subCategory.parentCategoryId}';

      // Fetch the existing category document from Firestore
      final DocumentSnapshot categoryDocument =
          await FirebaseFirestore.instance.doc(categoryDocumentPath).get();

      // Retrieve the current subcategories list from the category document
      List<Map<String, dynamic>> subcategories =
          List.from(categoryDocument['subcategories']);

      // Remove the subcategory with the specified ID
      subcategories.removeWhere((sub) => sub['id'] == subCategory.id);

      // Update the category document with the modified subcategories list
      await FirebaseFirestore.instance.doc(categoryDocumentPath).update({
        'subcategories': subcategories,
      });
    } on FirebaseException catch (e) {
      throw FBException(message: FBExceptionHandler.handleFBException(e));
    } catch (e) {
      throw FBException(
          message: 'An error occurred while deleting subcategory');
    }
  }
}
