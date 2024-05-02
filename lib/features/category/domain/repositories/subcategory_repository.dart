import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../auth/domain/entities/user_entity.dart';
import '../entities/subcategory_entity.dart';

abstract class SubCategoryRepository {
  // Method to add a subcategory
  Future<Either<Failure, UserEntity>> addSubCategory(
    UserEntity user,
    SubcategoryEntity subCategoryEntity,
  );

  // Method to edit a subcategory
  Future<Either<Failure, UserEntity>> editSubCategory(
    UserEntity user,
    SubcategoryEntity subCategoryEntity,
  );

  // Method to delete a subcategory
  Future<Either<Failure, UserEntity>> deleteSubCategory(
    UserEntity user,
    SubcategoryEntity subCategoryEntity,
  );
}
