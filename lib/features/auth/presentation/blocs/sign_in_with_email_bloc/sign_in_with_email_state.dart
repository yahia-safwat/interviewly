part of 'sign_in_with_email_bloc.dart';

sealed class SignInWithEmailState extends Equatable {
  const SignInWithEmailState();

  @override
  List<Object> get props => [];
}

final class SignInWithEmailInitial extends SignInWithEmailState {}

final class SignInWithEmailLoading extends SignInWithEmailState {}

final class SignInWithEmailSuccess extends SignInWithEmailState {
  final UserEntity? user;
  const SignInWithEmailSuccess({required this.user});

  @override
  List<Object> get props => [user!];
}

final class SignInWithEmailError extends SignInWithEmailState {
  final String errorMessage;
  const SignInWithEmailError({required this.errorMessage});
}
