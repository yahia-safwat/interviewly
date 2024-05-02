part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class AuthStateChanges extends AuthEvent {
  final String? userId;

  const AuthStateChanges(this.userId);

  @override
  List<Object?> get props => [userId];
}

class AuthStateError extends AuthEvent {
  final String errorMessage;

  const AuthStateError(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}
