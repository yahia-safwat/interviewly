part of 'sign_in_with_google_bloc.dart';

@freezed
class SignInWithGoogleEvent with _$SignInWithGoogleEvent {
  const factory SignInWithGoogleEvent.started() = _Started;

  const factory SignInWithGoogleEvent.signIn() = _SignIn;
}
