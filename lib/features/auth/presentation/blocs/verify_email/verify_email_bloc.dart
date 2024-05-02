import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/send_email_verification_usecase.dart';

part 'verify_email_event.dart';
part 'verify_email_state.dart';
part 'verify_email_bloc.freezed.dart';

class VerifyEmailBloc extends Bloc<VerifyEmailEvent, VerifyEmailState> {
  final SendEmailVerificationUSeCase sendEmailVerificationUSeCase;
  VerifyEmailBloc({required this.sendEmailVerificationUSeCase})
      : super(const _Initial()) {
    on<_SendVerificationEmail>(_onSendVerificationEmail);
  }

  Future<FutureOr<void>> _onSendVerificationEmail(
    _SendVerificationEmail event,
    Emitter<VerifyEmailState> emit,
  ) async {
    emit(const VerifyEmailState.sending());
    final result = await sendEmailVerificationUSeCase.call();
    result.fold(
      (failure) => emit(VerifyEmailState.sentError(failure.message)),
      (success) => emit(const VerifyEmailState.sentSuccess()),
    );
  }
}
