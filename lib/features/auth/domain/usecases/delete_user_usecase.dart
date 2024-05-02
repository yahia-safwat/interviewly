import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class DeleteUserUseCase {
  final AuthRepository authRepository;

  DeleteUserUseCase({required this.authRepository});

  Future<Either<Failure, Unit>> call(UserEntity user) async {
    return await authRepository.deleteUser(user);
  }
}
