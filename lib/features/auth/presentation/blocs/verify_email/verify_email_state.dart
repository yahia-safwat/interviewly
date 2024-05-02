part of 'verify_email_bloc.dart';

@freezed
class VerifyEmailState with _$VerifyEmailState {
  const factory VerifyEmailState.initial() = _Initial;
  const factory VerifyEmailState.sending() = _Sending;
  const factory VerifyEmailState.sentSuccess() = _SentSuccess;
  const factory VerifyEmailState.sentError(String errormessage) = _SentError;
}
