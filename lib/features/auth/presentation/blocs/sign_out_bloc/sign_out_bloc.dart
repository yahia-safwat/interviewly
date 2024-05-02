import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecases/sign_out_usecase.dart';

part 'sign_out_event.dart';
part 'sign_out_state.dart';

class SignOutBloc extends Bloc<SignOutEvent, SignOutState> {
  final SignOutUseCase signOutUseCase;

  SignOutBloc({
    required this.signOutUseCase,
  }) : super(SignOutInitial()) {
    on<SignOutPressed>(_onSignOutPressed);
  }

  void _onSignOutPressed(
      SignOutPressed event, Emitter<SignOutState> emit) async {
    emit(SignOutLoading());
    final result = await signOutUseCase();
    emit(
      result.fold(
        (failure) => SignOutError(errorMessage: failure.message),
        (_) => SignOutSuccess(),
      ),
    );
  }
}
