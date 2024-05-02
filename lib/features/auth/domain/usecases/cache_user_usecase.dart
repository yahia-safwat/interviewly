import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../repositories/auth_repository.dart';
import '../entities/user_entity.dart';

class CacheUserUseCase {
  final AuthRepository authRepository;

  CacheUserUseCase({required this.authRepository});

  Future<Either<Failure, UserEntity>> call(UserEntity user) async {
    return await authRepository.cacheUser(user);
  }
}
