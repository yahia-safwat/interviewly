import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../auth/domain/entities/user_entity.dart';
import '../../../../category/domain/entities/subcategory_entity.dart';
import '../../../domain/entities/question_entity.dart';
import '../../../domain/usecases/fetch_questions_use_case.dart';
import '../../../domain/usecases/toggle_question_status_usecase.dart';

part 'question_event.dart';
part 'question_state.dart';
part 'question_bloc.freezed.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  final FetchQuestionsUseCase fetchQuestionsUseCase;
  final ToggleQuestionStatusUseCase toggleQuestionStatusUseCase;

  // Clicked SubCategory
  SubcategoryEntity? clickedsubcategory;

  QuestionBloc({
    required this.fetchQuestionsUseCase,
    required this.toggleQuestionStatusUseCase,
  }) : super(const QuestionState.initial()) {
    on<FetchQuestions>(_onFetchQuestions);
    on<ToggleQuestionStatus>(_onToggleQuestionStatus);
  }

  // Method to fetch questions
  void _onFetchQuestions(
    FetchQuestions event,
    Emitter<QuestionState> emit,
  ) async {
    emit(const QuestionState.fetching());
    final Either<Failure, List<QuestionEntity>> result =
        await fetchQuestionsUseCase(event.user, event.clickedCategory);

    result.fold(
      (failure) => emit(QuestionState.fetchFailure(failure.message)),
      (questions) => emit(QuestionState.fetchSuccess(questions)),
    );
  }

// Method to toggle question status
  void _onToggleQuestionStatus(
    ToggleQuestionStatus event,
    Emitter<QuestionState> emit,
  ) async {
    // emit(const QuestionState.toggling());
    final Either<Failure, UserEntity> result =
        await toggleQuestionStatusUseCase(event.user, event.question);

    result.fold(
      (failure) => emit(QuestionState.toggleFailure(failure.message)),
      (user) => emit(QuestionState.toggleSuccess(user)),
    );
  }
}
