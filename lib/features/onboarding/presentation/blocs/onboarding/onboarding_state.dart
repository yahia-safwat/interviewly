part of 'onboarding_bloc.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = _Initial;
  const factory OnboardingState.onBoardingInProgress(int currentPage) =
      _OnBoardingInProgress;
  const factory OnboardingState.onBoardingCompleted(bool isFirstTime) =
      _OnBoardingCompleted;
  const factory OnboardingState.onBoardingError(String errMessage) =
      _OnBoardingError;
}
