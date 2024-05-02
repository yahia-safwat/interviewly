import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class SignInWithGoogleUseCase {
  final AuthRepository authRepository;

  SignInWithGoogleUseCase({required this.authRepository});

  Future<Either<Failure, UserEntity?>> call() async {
    return await authRepository.signInWithGoogle();
  }
}
