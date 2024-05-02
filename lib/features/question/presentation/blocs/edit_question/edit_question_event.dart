part of 'edit_question_bloc.dart';

@freezed
class EditQuestionEvent with _$EditQuestionEvent {
  const factory EditQuestionEvent.started() = _Started;
  const factory EditQuestionEvent.editQuestion({
    required UserEntity user,
    required QuestionEntity question,
  }) = _EditQuestion;
}
