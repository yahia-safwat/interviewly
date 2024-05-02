import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class OnboardingRepository {
  Future<Either<Failure, Unit>> setFirstTime({required bool value});
}
