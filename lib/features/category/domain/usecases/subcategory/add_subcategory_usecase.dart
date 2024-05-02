import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../auth/domain/entities/user_entity.dart';
import '../../entities/subcategory_entity.dart';
import '../../repositories/subcategory_repository.dart';

class AddSubCategoryUseCase {
  final SubCategoryRepository repository;

  AddSubCategoryUseCase({required this.repository});

  Future<Either<Failure, UserEntity>> call(
    UserEntity user,
    SubcategoryEntity subcategoryEntity,
  ) async {
    return await repository.addSubCategory(user, subcategoryEntity);
  }
}
