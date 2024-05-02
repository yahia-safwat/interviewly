import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../repositories/auth_repository.dart';

class ForgetPasswordUseCase {
  final AuthRepository authRepository;

  ForgetPasswordUseCase({required this.authRepository});

  Future<Either<Failure, Unit>> call(String email) async {
    return await authRepository.forgetPassword(email);
  }
}
