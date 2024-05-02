part of 'question_bloc.dart';

abstract class QuestionEvent extends Equatable {
  const QuestionEvent();

  @override
  List<Object> get props => [];
}

class FetchQuestions extends QuestionEvent {
  final UserEntity user;
  final SubcategoryEntity clickedCategory;

  const FetchQuestions({
    required this.user,
    required this.clickedCategory,
  });

  @override
  List<Object> get props => [user, clickedCategory];
}

class ToggleQuestionStatus extends QuestionEvent {
  final UserEntity user;
  final QuestionEntity question;

  const ToggleQuestionStatus({
    required this.user,
    required this.question,
  });
}
