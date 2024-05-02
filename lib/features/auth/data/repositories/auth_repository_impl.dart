import 'dart:async';

import 'package:dartz/dartz.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../data_sources/local/auth_local_service.dart';
import '../data_sources/remote/auth_remote_service.dart';
import '../models/user_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final NetworkInfo networkInfo;
  final AuthRemoteService authRemoteService;
  final AuthLocalService authLocalService;

  AuthRepositoryImpl({
    required this.networkInfo,
    required this.authRemoteService,
    required this.authLocalService,
  });

  @override
  Stream<Either<Failure, String?>> get authStream {
    try {
      // Return the auth stream from the remote service
      return authRemoteService.authStateChanges.map((user) {
        // if user is not null, return the user id
        if (user != null) return Right(user.uid);

        // if user is null, return null
        return const Right(null);
      });
    } on FBException catch (e) {
      return Stream.value(Left(FBFailure(message: e.message ?? '')));
    }
  }

  @override
  Future<Either<Failure, UserEntity?>> signIn(
    String email,
    String password,
  ) async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Call the sign in method from the remote service
        final result = await authRemoteService.signIn(email, password);

        // if result is not null, return the user
        if (result != null) return Right(result.toEntity());

        // if result is null, return null
        return const Right(null);
      } else {
        throw NetworkException(message: AppStrings.noInternetConnection);
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message ?? ''));
    }
  }

  @override
  Future<Either<Failure, UserEntity?>> signUp(
      UserEntity? user, String password) async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Convert the user entity to the user model
        final userModel = UserModel.fromEntity(user!);

        // Call the sign up method from the remote service
        final result = await authRemoteService.signUp(userModel, password);

        // if result is not null, return the user
        if (result != null) return Right(result.toEntity());

        // if result is null, return null
        return const Right(null);
      } else {
        throw NetworkException(message: AppStrings.noInternetConnection);
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message ?? ''));
    }
  }

  @override
  Future<Either<Failure, UserEntity?>> signInWithGoogle() async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Call sign in with google method from remote service
        final result = await authRemoteService.signInWithGoogle();

        // if result is not null, return the user
        if (result != null) return Right(result.toEntity());

        // if result is null, return null
        return const Right(null);
      } else {
        throw NetworkException(message: AppStrings.noInternetConnection);
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message ?? ''));
    }
  }

  @override
  Future<Either<Failure, Unit>> signOut() async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Call the sign out method from the remote service
        await authRemoteService.signOut();

        // if successfully signed out, return unit
        return const Right(unit);
      } else {
        throw NetworkException(message: AppStrings.noInternetConnection);
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message ?? ''));
    }
  }

  @override
  Future<Either<Failure, UserEntity?>> fetchUser(String userId) async {
    try {
      // Attempt to fetch user from local storage
      final localUser = await authLocalService.fetchUser();

      // If user found in local storage, return it
      if (localUser != null) {
        return Right(localUser.toEntity());
      } else {
        // If user not found in local storage, fetch it from remote service
        final remoteUser = await authRemoteService.fetchUser(userId);

        if (remoteUser != null) {
          // Save user data to local storage
          await authLocalService.saveUser(user: remoteUser);

          // return the remote user
          return Right(remoteUser.toEntity());
        } else {
          // else remote user is null, return null
          return const Right(null);
        }
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> editUser(UserEntity user) async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Convert user entity to user model
        final userModel = UserModel.fromEntity(user);

        // Call the edit user method from the remote service
        await authRemoteService.editUser(userModel);

        // if successfully edited user, return unit
        return Right(user);
      } else {
        throw NetworkException(message: AppStrings.noInternetConnection);
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message ?? ''));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteUser(UserEntity user) async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Convert user entity to user model
        final userModel = UserModel.fromEntity(user);

        // Call the delete user method from the remote service
        await authRemoteService.deleteUser(userModel);

        // if successfully deleted user, return unit
        return const Right(unit);
      } else {
        throw NetworkException(message: AppStrings.noInternetConnection);
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message ?? ''));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> editEmail(
      UserEntity user, String newEmail) async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Convert user entity to user model
        final userModel = UserModel.fromEntity(user);

        // Call the edit email method from the remote service
        await authRemoteService.changeEmail(userModel, newEmail);

        // if successfully edited email, return the updated user
        return Right(user.copyWithEntity(email: newEmail));
      } else {
        throw NetworkException(message: AppStrings.noInternetConnection);
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message ?? ''));
    }
  }

  @override
  Future<Either<Failure, Unit>> editPassword(
    UserEntity user,
    String currentPassword,
    String newPassword,
  ) async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Convert user entity to user model
        final userModel = UserModel.fromEntity(user);

        // Call the edit password method from the remote service
        await authRemoteService.changePassword(
            userModel, currentPassword, newPassword);

        // if successfully edited password, return unit
        return const Right(unit);
      } else {
        throw NetworkException(message: AppStrings.noInternetConnection);
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message ?? ''));
    }
  }

  @override
  Future<Either<Failure, Unit>> forgetPassword(String email) async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Call the forget password method from the remote service
        await authRemoteService.forgetPassword(email);

        // if successfully sent email, return unit
        return const Right(unit);
      } else {
        throw NetworkException(message: AppStrings.noInternetConnection);
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message ?? ''));
    }
  }

  @override
  Future<Either<Failure, Unit>> sendEmailVerification() async {
    try {
      // Check if the device is connected to the internet
      if (await networkInfo.isConnected) {
        // Call send email verification method from remote service
        await authRemoteService.sendEmailVerification();

        // if successfully sent email, return unit
        return const Right(unit);
      } else {
        throw NetworkException(message: AppStrings.noInternetConnection);
      }
    } on FBException catch (e) {
      return Left(FBFailure(message: e.message ?? ''));
    } on NetworkException catch (e) {
      return Left(NetworkFailure(message: e.message ?? ''));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> cacheUser(UserEntity user) async {
    try {
      // Create user model from user entity
      final userModel = UserModel.fromEntity(user);

      // Save the user to local storage
      await authLocalService.saveUser(user: userModel);
      return Right(user);
    } on CacheException {
      return const Left(CacheFailure(message: 'Failed to Save user'));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteCachedUser() async {
    try {
      // Call the delete user method from the local service
      await authLocalService.removeUser();

      return const Right(unit);
    } on CacheException {
      return const Left(CacheFailure(message: 'Failed to Remove user'));
    }
  }
}
