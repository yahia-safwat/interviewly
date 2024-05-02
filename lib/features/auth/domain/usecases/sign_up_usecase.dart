import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class SignUpUseCase {
  final AuthRepository authRepository;

  SignUpUseCase({required this.authRepository});

  Future<Either<Failure, UserEntity?>> call(
      UserEntity user, String password) async {
    return await authRepository.signUp(user, password);
  }
}
