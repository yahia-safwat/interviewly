part of 'delete_question_bloc.dart';

@freezed
class DeleteQuestionState with _$DeleteQuestionState {
  const factory DeleteQuestionState.initial() = _Initial;
  const factory DeleteQuestionState.deleting() = _Deleting;
  const factory DeleteQuestionState.deleteSuccess(UserEntity user) =
      _DeleteSuccess;
  const factory DeleteQuestionState.deleteFailure(String message) =
      _DeleteFailure;
}
