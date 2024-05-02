import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/user_entity.dart';

abstract class AuthRepository {
  Stream<Either<Failure, String?>> get authStream;
  Future<Either<Failure, UserEntity?>> signIn(String email, String password);
  Future<Either<Failure, UserEntity?>> signUp(
      UserEntity? user, String password);
  Future<Either<Failure, Unit>> signOut();
  Future<Either<Failure, UserEntity?>> fetchUser(String usedId);
  Future<Either<Failure, UserEntity>> cacheUser(UserEntity user);

  Future<Either<Failure, UserEntity>> editUser(UserEntity user);
  Future<Either<Failure, Unit>> deleteUser(UserEntity user);
  Future<Either<Failure, Unit>> deleteCachedUser();
  Future<Either<Failure, UserEntity>> editEmail(
      UserEntity user, String newEmail);
  Future<Either<Failure, Unit>> editPassword(
      UserEntity user, String currentPassword, String newPassword);
  Future<Either<Failure, Unit>> forgetPassword(String email);
  Future<Either<Failure, Unit>> sendEmailVerification();
  Future<Either<Failure, UserEntity?>> signInWithGoogle();
}
