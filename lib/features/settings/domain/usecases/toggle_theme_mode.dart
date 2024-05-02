import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../repositories/settings_repository.dart';

class ToggleThemeModeUseCase {
  final SettingsRepository settingsRepository;

  ToggleThemeModeUseCase({required this.settingsRepository});

  Future<Either<Failure, Unit>> call(bool value) async {
    return settingsRepository.toggleThemeMode(value: value);
  }
}
