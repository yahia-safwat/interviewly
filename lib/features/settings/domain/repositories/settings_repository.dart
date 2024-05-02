import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class SettingsRepository {
  Future<Either<Failure, Unit>> toggleThemeMode({required bool value});
  Future<Either<Failure, Unit>> toggleDeveloperMode({required bool value});
}
