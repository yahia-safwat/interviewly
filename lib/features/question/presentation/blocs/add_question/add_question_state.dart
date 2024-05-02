part of 'add_question_bloc.dart';

@freezed
class AddQuestionState with _$AddQuestionState {
  const factory AddQuestionState.initial() = _Initial;
  const factory AddQuestionState.adding() = _Adding;
  const factory AddQuestionState.addSuccess(UserEntity user) = _AddSuccess;
  const factory AddQuestionState.addFailure(String message) = _AddFailure;
}
