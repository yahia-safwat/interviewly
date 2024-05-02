import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../auth/domain/entities/user_entity.dart';
import '../../entities/category_entity.dart';
import '../../repositories/category_repository.dart';

class EditCategoryUseCase {
  final CategoryRepository repository;

  EditCategoryUseCase({required this.repository});

  Future<Either<Failure, UserEntity>> call(
      UserEntity user, CategoryEntity category) async {
    return await repository.editCategory(user, category);
  }
}
