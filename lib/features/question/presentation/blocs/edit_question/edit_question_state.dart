part of 'edit_question_bloc.dart';

@freezed
class EditQuestionState with _$EditQuestionState {
  const factory EditQuestionState.initial() = _Initial;
  const factory EditQuestionState.editing() = _Editing;
  const factory EditQuestionState.editSuccess(UserEntity user) = _EditSuccess;
  const factory EditQuestionState.editFailure(String message) = _EditFailure;
}
