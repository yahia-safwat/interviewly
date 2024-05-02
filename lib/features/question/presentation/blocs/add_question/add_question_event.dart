part of 'add_question_bloc.dart';

@freezed
class AddQuestionEvent with _$AddQuestionEvent {
  const factory AddQuestionEvent.started() = _Started;
  const factory AddQuestionEvent.addQuestion({
    required UserEntity user,
    required QuestionEntity question,
  }) = _AddQuestion;
}
