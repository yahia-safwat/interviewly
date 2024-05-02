import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../auth/domain/entities/user_entity.dart';
import '../../../domain/entities/question_entity.dart';
import '../../../domain/usecases/delete_question_use_case.dart';

part 'delete_question_event.dart';
part 'delete_question_state.dart';
part 'delete_question_bloc.freezed.dart';

class DeleteQuestionBloc
    extends Bloc<DeleteQuestionEvent, DeleteQuestionState> {
  final DeleteQuestionUseCase deleteQuestionUseCase;
  DeleteQuestionBloc({required this.deleteQuestionUseCase})
      : super(const _Initial()) {
    on<_DeleteQuestion>(_onDeleteQuestionEvent);
  }

  Future<FutureOr<void>> _onDeleteQuestionEvent(
    _DeleteQuestion event,
    Emitter<DeleteQuestionState> emit,
  ) async {
    emit(const DeleteQuestionState.deleting());
    final Either<Failure, UserEntity> result =
        await deleteQuestionUseCase(event.user, event.question);
    result.fold(
      (failure) => emit(DeleteQuestionState.deleteFailure(failure.message)),
      (user) => emit(DeleteQuestionState.deleteSuccess(user)),
    );
  }
}
