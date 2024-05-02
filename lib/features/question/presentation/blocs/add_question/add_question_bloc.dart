import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/errors/failures.dart';
import '../../../../auth/domain/entities/user_entity.dart';
import '../../../../category/domain/entities/subcategory_entity.dart';
import '../../../domain/entities/question_entity.dart';
import '../../../domain/usecases/add_question_use_case.dart';

part 'add_question_event.dart';
part 'add_question_state.dart';
part 'add_question_bloc.freezed.dart';

class AddQuestionBloc extends Bloc<AddQuestionEvent, AddQuestionState> {
  final AddQuestionUseCase addQuestionUseCase;

  SubcategoryEntity? subCategory;

  AddQuestionBloc({required this.addQuestionUseCase})
      : super(const _Initial()) {
    on<_AddQuestion>(_onAddQuestionEvent);
  }

  _onAddQuestionEvent(
    _AddQuestion event,
    Emitter<AddQuestionState> emit,
  ) async {
    emit(const _Adding());
    final Either<Failure, UserEntity> result =
        await addQuestionUseCase(event.user, event.question);

    result.fold(
      (failure) => emit(_AddFailure(failure.message)),
      (user) => emit(_AddSuccess(user)),
    );
  }
}
