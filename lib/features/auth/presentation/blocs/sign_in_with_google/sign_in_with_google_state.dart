part of 'sign_in_with_google_bloc.dart';

@freezed
class SignInWithGoogleState with _$SignInWithGoogleState {
  const factory SignInWithGoogleState.initial() = _Initial;

  const factory SignInWithGoogleState.loading() = _Loading;
  const factory SignInWithGoogleState.success(UserEntity user) = _Success;
  const factory SignInWithGoogleState.error(String errorMessage) = _Error;
}
