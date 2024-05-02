import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../auth/domain/entities/user_entity.dart';
import '../../../domain/entities/question_entity.dart';
import '../../../domain/usecases/edit_question_use_case.dart';

part 'edit_question_event.dart';
part 'edit_question_state.dart';
part 'edit_question_bloc.freezed.dart';

class EditQuestionBloc extends Bloc<EditQuestionEvent, EditQuestionState> {
  final EditQuestionUseCase editQuestionUseCase;

  // Question to be edited
  QuestionEntity? question;

  EditQuestionBloc({required this.editQuestionUseCase})
      : super(const _Initial()) {
    on<_EditQuestion>(_onEditQuestionEvent);
  }

  Future<FutureOr<void>> _onEditQuestionEvent(
    _EditQuestion event,
    Emitter<EditQuestionState> emit,
  ) async {
    emit(const EditQuestionState.editing());
    final Either<Failure, UserEntity> result =
        await editQuestionUseCase(event.user, event.question);
    result.fold(
      (failure) => emit(EditQuestionState.editFailure(failure.message)),
      (user) => emit(EditQuestionState.editSuccess(user)),
    );
  }
}
