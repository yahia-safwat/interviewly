import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class SignInWithEmailUseCase {
  final AuthRepository authRepository;

  SignInWithEmailUseCase({required this.authRepository});

  Future<Either<Failure, UserEntity?>> call(
    String email,
    String password,
  ) async {
    return await authRepository.signIn(email, password);
  }
}
