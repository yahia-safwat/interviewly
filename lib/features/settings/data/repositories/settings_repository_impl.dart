import 'package:dartz/dartz.dart';

import '../../../../common/app/data/data_sources/local/app_prefs_service.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/repositories/settings_repository.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final AppPrefsService appPrefsService;

  SettingsRepositoryImpl({required this.appPrefsService});

  @override
  Future<Either<Failure, Unit>> toggleThemeMode({required bool value}) async {
    try {
      await appPrefsService.saveDarkMode(value: value);
      return right(unit);
    } catch (e) {
      const message = 'Error while setting dark mode';
      return left(const CacheFailure(message: message));
    }
  }

  @override
  Future<Either<Failure, Unit>> toggleDeveloperMode(
      {required bool value}) async {
    try {
      await appPrefsService.saveDeveloperMode(value: value);
      return right(unit);
    } catch (e) {
      const message = 'Error while setting developer mode';
      return left(const CacheFailure(message: message));
    }
  }
}
