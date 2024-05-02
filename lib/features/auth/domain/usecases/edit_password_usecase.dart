import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class EditPasswordUseCase {
  final AuthRepository authRepository;

  EditPasswordUseCase({required this.authRepository});

  Future<Either<Failure, Unit>> call(
      UserEntity user, String currentPassword, String newPassword) async {
    return await authRepository.editPassword(
        user, currentPassword, newPassword);
  }
}
