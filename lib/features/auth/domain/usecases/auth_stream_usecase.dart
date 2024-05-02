import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../repositories/auth_repository.dart';

class AuthStreamUseCase {
  final AuthRepository authRepository;

  AuthStreamUseCase({required this.authRepository});

  // @override
  Stream<Either<Failure, String?>> call() {
    return authRepository.authStream;
  }
}
