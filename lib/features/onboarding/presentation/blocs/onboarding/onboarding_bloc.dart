import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/set_first_time_usecase.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';
part 'onboarding_bloc.freezed.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final SetFirstTimeUseCase setFirstTimeUseCase;
  // Define the current page
  int page = 0;

  // Define getter for current page
  int get currentPage => page;

  OnboardingBloc({required this.setFirstTimeUseCase})
      : super(const _Initial()) {
    on<_IncreasePage>(_onIncreasePage);
    on<_CompleteOnboarding>(_onCompleteOnboarding);
    on<_SkipOnboarding>(_onSkipOnboarding);
  }

  // Event handler for increase page
  FutureOr<void> _onIncreasePage(event, emit) {
    page = event.currentPage;
    emit(OnboardingState.onBoardingInProgress(event.currentPage));
  }

  // Event handler for complete onboarding
  Future<FutureOr<void>> _onCompleteOnboarding(event, emit) async {
    final result = await setFirstTimeUseCase(event.isFirstTime);
    result.fold(
      (failure) => emit(OnboardingState.onBoardingError(failure.message)),
      (success) => emit(const OnboardingState.onBoardingCompleted(false)),
    );
  }

// Event handler for skip onboarding
  Future<FutureOr<void>> _onSkipOnboarding(event, emit) async {
    final result = await setFirstTimeUseCase(event.isFirstTime);
    result.fold(
      (failure) => emit(OnboardingState.onBoardingError(failure.message)),
      (success) => emit(const OnboardingState.onBoardingCompleted(false)),
    );
  }
}
