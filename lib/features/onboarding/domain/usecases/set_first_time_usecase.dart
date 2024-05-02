import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../repositories/onboarding_repository.dart';

class SetFirstTimeUseCase {
  final OnboardingRepository onboardingRepository;

  SetFirstTimeUseCase({required this.onboardingRepository});

  Future<Either<Failure, Unit>> call(bool value) async {
    return onboardingRepository.setFirstTime(value: value);
  }
}
