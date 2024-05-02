import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class AppRepository {
  Future<Either<Failure, Map<String, dynamic>>> fetchPrefsData();
  // Future<Either<Failure, Unit>> clearPrefs();
}
