import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../repositories/settings_repository.dart';

class ToggleDeveloperModeUseCase {
  final SettingsRepository settingsRepository;

  ToggleDeveloperModeUseCase({required this.settingsRepository});

  Future<Either<Failure, Unit>> call(bool value) async {
    return settingsRepository.toggleDeveloperMode(value: value);
  }
}
