import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../repositories/auth_repository.dart';

class SendEmailVerificationUSeCase {
  final AuthRepository authRepository;

  SendEmailVerificationUSeCase({required this.authRepository});

  Future<Either<Failure, Unit>> call() async {
    return await authRepository.sendEmailVerification();
  }
}
