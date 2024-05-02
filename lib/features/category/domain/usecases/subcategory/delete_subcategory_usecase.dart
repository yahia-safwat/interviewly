import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../auth/domain/entities/user_entity.dart';
import '../../entities/subcategory_entity.dart';
import '../../repositories/subcategory_repository.dart';

class DeleteSubCategoryUsecase {
  final SubCategoryRepository repository;

  DeleteSubCategoryUsecase({required this.repository});

  Future<Either<Failure, UserEntity>> call(
    UserEntity user,
    SubcategoryEntity subCategoryEntity,
  ) async {
    return await repository.deleteSubCategory(user, subCategoryEntity);
  }
}
