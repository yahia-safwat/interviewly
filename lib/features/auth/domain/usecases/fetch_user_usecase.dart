import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class FetchUserUseCase implements UseCase<void, String> {
  final AuthRepository authRepository;

  FetchUserUseCase({required this.authRepository});

  @override
  Future<Either<Failure, UserEntity?>> call(String userId) async {
    return await authRepository.fetchUser(userId);
  }
}
