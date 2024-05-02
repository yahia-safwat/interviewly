import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class EditEmailUseCase {
  final AuthRepository authRepository;

  EditEmailUseCase({required this.authRepository});

  Future<Either<Failure, UserEntity>> call(
      UserEntity user, String newEmail) async {
    return await authRepository.editEmail(user, newEmail);
  }
}
