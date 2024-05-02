part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.increasePage(int currentPage) = _IncreasePage;
  const factory OnboardingEvent.completeOnboarding(
      {required bool isFirstTime}) = _CompleteOnboarding;
  const factory OnboardingEvent.skipOnboarding({required bool isFirstTime}) =
      _SkipOnboarding;
}
