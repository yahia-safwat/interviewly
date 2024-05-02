part of 'question_bloc.dart';

@freezed
abstract class QuestionState with _$QuestionState {
  const factory QuestionState.initial() = _Initial;

  // States related to fetching questions
  const factory QuestionState.fetching() = _Fetching;
  const factory QuestionState.fetchSuccess(
    List<QuestionEntity> questions,
  ) = _FetchSuccess;
  const factory QuestionState.fetchFailure(String errorMessage) = _FetchFailure;

  // States related to toggling question status
  const factory QuestionState.toggling() = _Toggling;
  const factory QuestionState.toggleSuccess(UserEntity user) = _ToggleSuccess;
  const factory QuestionState.toggleFailure(String errorMessage) =
      _ToggleFailure;
}
