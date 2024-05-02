import 'package:dartz/dartz.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../../auth/domain/entities/user_entity.dart';
import '../../domain/entities/category_entity.dart';
import '../../domain/entities/subcategory_entity.dart';
import '../../domain/repositories/subcategory_repository.dart';
import '../data_sources/subcategory_remote_data_source.dart';
import '../models/subcategory_model.dart';

class SubCategoryRepositoryImpl implements SubCategoryRepository {
  final SubCategoryRemoteDataSourceImpl subCategoryRemoteDataSource;
  final NetworkInfo networkInfo;

  SubCategoryRepositoryImpl(
      {required this.subCategoryRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, UserEntity>> addSubCategory(
    UserEntity user,
    SubcategoryEntity subCategoryEntity,
  ) async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Convert SubcategoryEntity to SubcategoryModel
        final SubcategoryModel subCategoryModel =
            SubcategoryModel.fromEntity(subCategoryEntity);

        // Add subcategory to remote data source
        await subCategoryRemoteDataSource.addSubCategory(
            user, subCategoryModel);

        // Update user's subcategories list after adding the subcategory
        final updatedCategories =
            _updateUserCategoriesAfterAdd(user, subCategoryEntity);

        // Return Right with updated user
        return Right(user.copyWithEntity(categories: updatedCategories));
      } else {
        throw NetworkException(message: AppStrings.noInternetConnection);
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message ?? ''));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> editSubCategory(
    UserEntity user,
    SubcategoryEntity subCategoryEntity,
  ) async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Convert SubcategoryEntity to SubcategoryModel
        final SubcategoryModel subCategoryModel =
            SubcategoryModel.fromEntity(subCategoryEntity);

        // Edit subcategory in remote data source
        await subCategoryRemoteDataSource.editSubCategory(
          user,
          subCategoryModel,
        );

        // Update user's subcategories list after editing the subcategory
        final updatedCategories =
            _updateUserCategoriesAfterEdit(user, subCategoryEntity);

        // Return Right with updated user
        return Right(user.copyWithEntity(categories: updatedCategories));
      } else {
        throw NetworkException(message: AppStrings.noInternetConnection);
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message ?? ''));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> deleteSubCategory(
    UserEntity user,
    SubcategoryEntity subCategoryEntity,
  ) async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Convert SubcategoryEntity to SubcategoryModel
        final SubcategoryModel subCategoryModel =
            SubcategoryModel.fromEntity(subCategoryEntity);

        // Delete subcategory in remote data source
        await subCategoryRemoteDataSource.deleteSubCategory(
          user,
          subCategoryModel,
        );

        // Update user's subcategories list after deleting the subcategory
        final updatedCategories =
            _updateUserCategoriesAfterDelete(user, subCategoryEntity);

        // Return Right with updated user
        return Right(user.copyWithEntity(categories: updatedCategories));
      } else {
        throw NetworkException(message: AppStrings.noInternetConnection);
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message ?? ''));
    }
  }
}

/// Updates the user's categories list after adding a new subcategory.
List<CategoryEntity> _updateUserCategoriesAfterAdd(
    UserEntity user, SubcategoryEntity subCategory) {
  // Create a new list with all existing categories
  final updatedCategories = List<CategoryEntity>.from(user.categories);

  // Find the category to which the new subcategory belongs
  final categoryIndex = updatedCategories
      .indexWhere((category) => category.id == subCategory.parentCategoryId);

  // If the category is found, add the subcategory to it
  if (categoryIndex != -1) {
    final categoryToUpdate = updatedCategories[categoryIndex];
    final updatedSubcategories = [
      ...categoryToUpdate.subcategories,
      subCategory
    ];

    updatedCategories[categoryIndex] = categoryToUpdate.copyWithEntity(
      subcategories: updatedSubcategories,
    );
  }

  return updatedCategories;
}

/// Updates the user's categories list after editing a subcategory.
List<CategoryEntity> _updateUserCategoriesAfterEdit(
    UserEntity user, SubcategoryEntity editedSubCategory) {
  // Create a new list with all existing categories
  final updatedCategories = List<CategoryEntity>.from(user.categories);

  // Iterate over each category in the user's categories list
  for (int i = 0; i < updatedCategories.length; i++) {
    // Find the index of the edited subcategory in the category's subcategories list
    final subcategoryIndex = updatedCategories[i]
        .subcategories
        .indexWhere((subcategory) => subcategory.id == editedSubCategory.id);

    // If the subcategory is found, replace it with the edited subcategory
    if (subcategoryIndex != -1) {
      updatedCategories[i] = updatedCategories[i].copyWithEntity(
        subcategories: [
          for (var subcategory in updatedCategories[i].subcategories)
            if (subcategory.id == editedSubCategory.id)
              editedSubCategory
            else
              subcategory,
        ],
      );
      break; // Exit loop once edited subcategory is found and updated
    }
  }

  return updatedCategories;
}

/// Updates the user's categories list after deleting a subcategory.
List<CategoryEntity> _updateUserCategoriesAfterDelete(
    UserEntity user, SubcategoryEntity deletedSubCategory) {
  // Create a new list with all existing categories
  final updatedCategories = List<CategoryEntity>.from(user.categories);

  // Iterate over each category in the user's categories list
  for (int i = 0; i < updatedCategories.length; i++) {
    // Remove the deleted subcategory from the category's subcategories list
    updatedCategories[i] = updatedCategories[i].copyWithEntity(
      subcategories: updatedCategories[i]
          .subcategories
          .where((subcategory) => subcategory.id != deletedSubCategory.id)
          .toList(),
    );
  }

  return updatedCategories;
}
