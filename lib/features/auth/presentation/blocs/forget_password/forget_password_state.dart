part of 'forget_password_bloc.dart';

@freezed
class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState.initial() = _Initial;

  // Forgot password states
  const factory ForgetPasswordState.sendingResetEmail() = _SendingResetEmail;
  const factory ForgetPasswordState.resetEmailSent() = _ResetEmailSent;
  const factory ForgetPasswordState.resetEmailSendError(String errorMessage) =
      _ResetEmailSendError;
}
