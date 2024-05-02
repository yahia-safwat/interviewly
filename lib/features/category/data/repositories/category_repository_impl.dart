import 'package:dartz/dartz.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../../auth/domain/entities/user_entity.dart';
import '../../domain/entities/category_entity.dart';
import '../../domain/repositories/category_repository.dart';
import '../data_sources/category_remote_data_source.dart';
import '../models/category_model.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryRemoteDataSource categoryRemoteDataSource;
  final NetworkInfo networkInfo;

  CategoryRepositoryImpl({
    required this.categoryRemoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<CategoryEntity?>>> fetchCategories(
      UserEntity? user) async {
    try {
      // Fetch categories from user's categoryModels
      final List<CategoryEntity?> categories = user!.categories;

      // Sort categories by createdAt in ascending order
      categories.sort((a, b) => a!.createdAt.compareTo(b!.createdAt));
      return Right(categories);
    } catch (e) {
      return Left(UnknownFailure(message: 'Failed to fetch categories: $e'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> addCategory(
      UserEntity user, CategoryEntity category) async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Convert CategoryEntity to CategoryModel
        final CategoryModel categoryModel = CategoryModel.fromEntity(category);

        // Add category to remote data source
        await categoryRemoteDataSource.addCategory(categoryModel, user.uid);

        // Update user's categories list after adding the category
        final updatedCategories = _updateUserCategoriesAfterAdd(user, category);

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
  Future<Either<Failure, UserEntity>> editCategory(
      UserEntity user, CategoryEntity category) async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Convert CategoryEntity to CategoryModel
        final CategoryModel categoryModel = CategoryModel.fromEntity(category);

        // Update category in remote data source
        await categoryRemoteDataSource.editCategory(categoryModel, user.uid);

        // Update user's categories list after editing the category
        final updatedCategories =
            _updateUserCategoriesAfterEdit(user, category);

        // Return Right with updated user
        return Right(user.copyWithEntity(categories: updatedCategories));
      } else {
        throw NetworkException(message: AppStrings.noInternetConnection);
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message ?? ''));
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to edit category: $e'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> deleteCategory(
      UserEntity user, CategoryEntity category) async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Convert CategoryEntity to CategoryModel
        final CategoryModel categoryModel = CategoryModel.fromEntity(category);

        // Delete category from remote data source
        await categoryRemoteDataSource.deleteCategory(categoryModel, user.uid);

        // Update user's categories list after deleting the category
        final updatedCategories =
            _updateUserCategoriesAfterDelete(user, category);

        // Return Right with updated user
        return Right(user.copyWithEntity(categories: updatedCategories));
      } else {
        throw NetworkException(message: AppStrings.noInternetConnection);
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message ?? ''));
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to delete category: $e'));
    }
  }
}

/// Updates the user's categories list after adding a new category.
List<CategoryEntity> _updateUserCategoriesAfterAdd(
    UserEntity user, CategoryEntity category) {
  final updatedCategories = [...user.categories, category];
  return updatedCategories;
}

/// Updates the user's categories list after editing a category.
List<CategoryEntity> _updateUserCategoriesAfterEdit(
    UserEntity user, CategoryEntity category) {
  final updatedCategories =
      user.categories.map((c) => c.id == category.id ? category : c).toList();
  return updatedCategories;
}

/// Updates the user's categories list after deleting a category.
List<CategoryEntity> _updateUserCategoriesAfterDelete(
    UserEntity user, CategoryEntity category) {
  final updatedCategories =
      user.categories.where((c) => c.id != category.id).toList();
  return updatedCategories;
}
