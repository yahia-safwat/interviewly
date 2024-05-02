part of 'sign_up_bloc.dart';

sealed class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

class SignUpPressed extends SignUpEvent {
  final UserEntity user;
  final String password;

  const SignUpPressed({required this.user, required this.password});

  @override
  List<Object> get props => [user, password];
}
