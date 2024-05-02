import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../auth/domain/entities/user_entity.dart';
import '../../entities/category_entity.dart';
import '../../repositories/category_repository.dart';

class FetchCategoriesUseCase {
  final CategoryRepository repository;

  FetchCategoriesUseCase({required this.repository});

  Future<Either<Failure, List<CategoryEntity?>>> call(UserEntity? user) async {
    return await repository.fetchCategories(user);
  }
}
