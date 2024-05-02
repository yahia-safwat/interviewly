import 'package:dartz/dartz.dart';
import 'package:interviewly/core/errors/failures.dart';

import '../../../auth/domain/entities/user_entity.dart';
import '../entities/question_entity.dart';
import '../repositories/question_repository.dart';

class EditQuestionUseCase {
  final QuestionRepository repository;

  EditQuestionUseCase({required this.repository});

  Future<Either<Failure, UserEntity>> call(
      UserEntity user, QuestionEntity question) async {
    return await repository.editQuestion(user, question);
  }
}
