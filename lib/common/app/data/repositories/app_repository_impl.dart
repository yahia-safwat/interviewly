import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/repositories/app_repository.dart';
import '../data_sources/local/app_prefs_service.dart';

class AppRepositoryImpl implements AppRepository {
  final AppPrefsService appPrefsService;

  AppRepositoryImpl({required this.appPrefsService});

  @override
  Future<Either<Failure, Map<String, dynamic>>> fetchPrefsData() async {
    try {
      final isFirstTime = await appPrefsService.getIsFirstTime();
      final isDarkMode = await appPrefsService.getDarkMode();
      final isDeveloperMode = await appPrefsService.getDeveloperMode();

      // Combine all the prefs values into a map
      final prefsData = {
        'isFirstTime': isFirstTime,
        'isDarkMode': isDarkMode,
        'isDeveloperMode': isDeveloperMode,
      };

      return Right(prefsData);
    } on Exception {
      return const Left(CacheFailure(message: 'Failed to fetch prefs data'));
    }
  }
}
