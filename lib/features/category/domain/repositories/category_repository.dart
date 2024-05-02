import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../auth/domain/entities/user_entity.dart';
import '../entities/category_entity.dart';

abstract class CategoryRepository {
  //Fetch categories
  Future<Either<Failure, List<CategoryEntity?>>> fetchCategories(
    UserEntity? user,
  );

  //Add category
  Future<Either<Failure, UserEntity>> addCategory(
      UserEntity user, CategoryEntity category);

  //Edit category
  Future<Either<Failure, UserEntity>> editCategory(
      UserEntity user, CategoryEntity category);

  //Delete category
  Future<Either<Failure, UserEntity>> deleteCategory(
      UserEntity user, CategoryEntity category);
}
