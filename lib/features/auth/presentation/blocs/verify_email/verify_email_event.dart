part of 'verify_email_bloc.dart';

@freezed
class VerifyEmailEvent with _$VerifyEmailEvent {
  const factory VerifyEmailEvent.started() = _Started;
  const factory VerifyEmailEvent.sendVerification() = _SendVerificationEmail;
}
