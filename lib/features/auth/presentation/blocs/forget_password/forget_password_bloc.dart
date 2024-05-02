import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/forget_password_usecase.dart';

part 'forget_password_event.dart';
part 'forget_password_state.dart';
part 'forget_password_bloc.freezed.dart';

class ForgetPasswordBloc
    extends Bloc<ForgetPasswordEvent, ForgetPasswordState> {
  final ForgetPasswordUseCase forgetPasswordUseCase;
  ForgetPasswordBloc({required this.forgetPasswordUseCase})
      : super(const _Initial()) {
    on<_ForgetPassword>(_onForgetPassword);
  }

  _onForgetPassword(
    _ForgetPassword event,
    Emitter<ForgetPasswordState> emit,
  ) async {
    emit(const ForgetPasswordState.sendingResetEmail());
    final result = await forgetPasswordUseCase(event.email);
    result.fold(
      (failure) {
        emit(ForgetPasswordState.resetEmailSendError(failure.message));
      },
      (success) => emit(const ForgetPasswordState.resetEmailSent()),
    );
  }
}
