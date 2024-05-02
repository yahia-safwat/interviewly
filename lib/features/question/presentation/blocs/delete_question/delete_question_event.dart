part of 'delete_question_bloc.dart';

@freezed
class DeleteQuestionEvent with _$DeleteQuestionEvent {
  const factory DeleteQuestionEvent.started() = _Started;
  const factory DeleteQuestionEvent.deleteQuestion({
    required UserEntity user,
    required QuestionEntity question,
  }) = _DeleteQuestion;
}
