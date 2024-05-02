import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../repositories/auth_repository.dart';

class DeleteCachedUserUseCase {
  final AuthRepository authRepository;

  DeleteCachedUserUseCase({required this.authRepository});

  Future<Either<Failure, Unit>> call() async {
    return await authRepository.deleteCachedUser();
  }
}
