import 'package:dartz/dartz.dart';
import 'package:interviewly/core/errors/failures.dart';

import '../../../auth/domain/entities/user_entity.dart';
import '../../../category/domain/entities/subcategory_entity.dart';
import '../entities/question_entity.dart';
import '../repositories/question_repository.dart';

class FetchQuestionsUseCase {
  final QuestionRepository repository;

  FetchQuestionsUseCase({required this.repository});

  Future<Either<Failure, List<QuestionEntity>>> call(
    UserEntity user,
    SubcategoryEntity clickedCategory,
  ) async {
    return await repository.fetchQuestions(user, clickedCategory);
  }
}
