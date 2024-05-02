import 'package:dartz/dartz.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../../auth/domain/entities/user_entity.dart';
import '../../../category/domain/entities/subcategory_entity.dart';
import '../../domain/entities/question_entity.dart';
import '../../domain/repositories/question_repository.dart';
import '../data_sources/question_remote_data_source.dart';
import '../models/question_model.dart';

class QuestionRepositoryImpl implements QuestionRepository {
  final QuestionRemoteDataSource questionRemoteDataSource;
  final NetworkInfo networkInfo;

  QuestionRepositoryImpl({
    required this.questionRemoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<QuestionEntity>>> fetchQuestions(
      UserEntity user, SubcategoryEntity clickedCategory) async {
    try {
      // Fetch questions from user's questionModels
      final List<QuestionEntity> questions = user.questions
          .where((question) => question.subcategoryId == clickedCategory.id)
          .toList();

      // Sort questions by createdAt in ascending order
      questions.sort((a, b) => a.createdAt.compareTo(b.createdAt));

      // Return Right with questionEntities
      return Right(questions);
    } catch (e) {
      // Return Left with ServerFailure if an exception occurs
      return Left(ServerFailure(message: 'Failed to fetch questions: $e'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> addQuestion(
      UserEntity user, QuestionEntity question) async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Convert QuestionEntity to QuestionModel
        final QuestionModel questionModel = QuestionModel.fromEntity(question);

        // Add question to remote data source
        await questionRemoteDataSource.addQuestion(questionModel);

        // Update user's questions list after adding the question
        final updatedQuestions = _updateUserQuestionsAfterAdd(user, question);

        // Return Right with updated user containing the added question
        return Right(user.copyWithEntity(questions: updatedQuestions));
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
  Future<Either<Failure, UserEntity>> editQuestion(
      UserEntity user, QuestionEntity question) async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Convert QuestionEntity to QuestionModel
        final QuestionModel questionModel = QuestionModel.fromEntity(question);

        // Edit question in remote data source
        await questionRemoteDataSource.editQuestion(questionModel);

        // Update question in user's questions list
        final updatedQuestions = _updateUserQuestionsAfterEdit(user, question);

        // Return Right with updated user
        return Right(user.copyWithEntity(questions: updatedQuestions));
      } else {
        throw NetworkException(message: AppStrings.noInternetConnection);
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    } on NetworkException {
      return const Left(NetworkFailure(message: 'No internet connection'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> deleteQuestion(
      UserEntity user, QuestionEntity question) async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Convert QuestionEntity to QuestionModel
        final QuestionModel questionModel = QuestionModel.fromEntity(question);

        // Delete question in remote data source
        await questionRemoteDataSource.deleteQuestion(questionModel);

        // Remove question from user's questions list
        final updatedQuestions =
            _updateUserQuestionsAfterDelete(user, question);

        // Return Right with updated user
        return Right(user.copyWithEntity(questions: updatedQuestions));
      } else {
        throw NetworkException(message: AppStrings.noInternetConnection);
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message ?? ''));
    } catch (e) {
      return Left(ServerFailure(message: 'Failed to add question: $e'));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> toggleQuestionStatus(
      UserEntity user, QuestionEntity question) async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Convert QuestionEntity to QuestionModel
        final QuestionModel questionModel = QuestionModel.fromEntity(question);

        // Edit question in remote data source
        await questionRemoteDataSource.toggleQuestionStatus(questionModel);

        // Update question in user's questions list
        final updatedQuestions =
            _updateUserQuestionsAfterToggle(user, question);

        // Return Right with updated user
        return Right(user.copyWithEntity(questions: updatedQuestions));
      } else {
        throw NetworkException(message: AppStrings.noInternetConnection);
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message ?? ''));
    } catch (e) {
      return Left(
          ServerFailure(message: 'Failed to toggle question status: $e'));
    }
  }
}

/// Updates the user's questions list after editing a question.
List<QuestionEntity> _updateUserQuestionsAfterEdit(
  UserEntity user,
  QuestionEntity question,
) {
  // Create a new list to store the updated questions
  List<QuestionEntity> updatedQuestions = [];

  // Iterate over each question in the user's questions list
  for (QuestionEntity q in user.questions) {
    // Check if the current question matches the edited question
    if (q.id == question.id) {
      // If the question is found, replace it with the edited question
      updatedQuestions.add(question);
    } else {
      // If the question is not the edited question, keep it unchanged
      updatedQuestions.add(q);
    }
  }

  // Return the updated questions list
  return updatedQuestions;
}

/// Updates the user's questions list after deleting a question.
List<QuestionEntity> _updateUserQuestionsAfterDelete(
    UserEntity user, QuestionEntity question) {
  // Create a new list to store the updated questions
  List<QuestionEntity> updatedQuestions = [];

  // Iterate over each question in the user's questions list
  for (QuestionEntity q in user.questions) {
    // Check if the current question is not the one to be deleted
    if (q.id != question.id) {
      // If the question is not the one to be deleted, keep it unchanged
      updatedQuestions.add(q);
    }
  }

  // Return the updated questions list
  return updatedQuestions;
}

/// Updates the user's questions list after toggling the status of a question.
List<QuestionEntity> _updateUserQuestionsAfterToggle(
  UserEntity user,
  QuestionEntity question,
) {
  // Create a new list to store the updated questions
  List<QuestionEntity> updatedQuestions = [];

  // Iterate over each question in the user's questions list
  for (QuestionEntity q in user.questions) {
    // Check if the current question matches the toggled question
    if (q.id == question.id) {
      // If the question is found, toggle its status
      updatedQuestions
          .add(question.copyWithEntity(knowsAnswer: !question.knowsAnswer));
    } else {
      // If the question is not the toggled question, keep it unchanged
      updatedQuestions.add(q);
    }
  }

  // Return the updated questions list
  return updatedQuestions;
}

/// Updates the user's questions list after adding a new question.
List<QuestionEntity> _updateUserQuestionsAfterAdd(
    UserEntity user, QuestionEntity question) {
  // Create a new list to store the updated questions
  List<QuestionEntity> updatedQuestions = [...user.questions];

  // Add the new question to the list of questions
  updatedQuestions.add(question);

  // Return the updated questions list
  return updatedQuestions;
}
