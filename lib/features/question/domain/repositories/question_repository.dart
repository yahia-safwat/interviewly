import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../auth/domain/entities/user_entity.dart';
import '../../../category/domain/entities/subcategory_entity.dart';
import '../entities/question_entity.dart';

abstract class QuestionRepository {
  Future<Either<Failure, List<QuestionEntity>>> fetchQuestions(
    UserEntity user,
    SubcategoryEntity clickedCategory,
  );
  Future<Either<Failure, UserEntity>> addQuestion(
      UserEntity user, QuestionEntity question);

  Future<Either<Failure, UserEntity>> editQuestion(
      UserEntity user, QuestionEntity question);

  Future<Either<Failure, UserEntity>> deleteQuestion(
      UserEntity user, QuestionEntity question);

  Future<Either<Failure, UserEntity>> toggleQuestionStatus(
      UserEntity user, QuestionEntity question);
}
