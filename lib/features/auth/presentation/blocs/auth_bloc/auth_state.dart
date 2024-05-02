part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthError extends AuthState {
  final String errorMessage;
  const AuthError({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}

class Authenticated extends AuthState {
  final UserEntity? user;
  const Authenticated({required this.user});

  @override
  List<Object?> get props => [user];
}

class Unauthenticated extends AuthState {}
