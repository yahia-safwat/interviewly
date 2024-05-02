import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../repositories/app_repository.dart';

class FetchPrefsDataUsecase {
  final AppRepository appRepository;

  FetchPrefsDataUsecase({required this.appRepository});

  Future<Either<Failure, Map<String, dynamic>>> call() async {
    return await appRepository.fetchPrefsData();
  }
}
