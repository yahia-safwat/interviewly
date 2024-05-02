part of 'sign_in_with_email_bloc.dart';

class SignInWithEmailEvent extends Equatable {
  const SignInWithEmailEvent();

  @override
  List<Object> get props => [];
}

class SignInWithEmailPressed extends SignInWithEmailEvent {
  final String email;
  final String password;

  const SignInWithEmailPressed({required this.email, required this.password});

  @override
  List<Object> get props => [email, password];
}
