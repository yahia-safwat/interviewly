import 'package:dartz/dartz.dart';

import '../../../../common/app/data/data_sources/local/app_prefs_service.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/repositories/onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final AppPrefsServiceImpl prefsService;

  OnboardingRepositoryImpl({required this.prefsService});
  @override
  Future<Either<Failure, Unit>> setFirstTime({required bool value}) async {
    try {
      // Set the first time to false in the shared preferences
      await prefsService.saveFirstTime(value: value);
      return right(unit);
    } catch (e) {
      return left(
          const CacheFailure(message: 'Error while setting first time'));
    }
  }
}
