import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../repositories/auth_repository.dart';
import '../entities/user_entity.dart';

class EditUserUseCase {
  final AuthRepository authRepository;

  EditUserUseCase({required this.authRepository});

  Future<Either<Failure, UserEntity>> call(UserEntity user) async {
    return await authRepository.editUser(user);
  }
}
