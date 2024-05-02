import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/sign_in_with_google_usecase.dart';

part 'sign_in_with_google_event.dart';
part 'sign_in_with_google_state.dart';
part 'sign_in_with_google_bloc.freezed.dart';

class SignInWithGoogleBloc
    extends Bloc<SignInWithGoogleEvent, SignInWithGoogleState> {
  final SignInWithGoogleUseCase signInWithGoogleUseCase;
  SignInWithGoogleBloc({required this.signInWithGoogleUseCase})
      : super(const _Initial()) {
    on<_SignIn>(_onSignIn);
  }

  Future<FutureOr<void>> _onSignIn(
    _SignIn event,
    Emitter<SignInWithGoogleState> emit,
  ) async {
    emit(const SignInWithGoogleState.loading());
    final result = await signInWithGoogleUseCase.call();
    result.fold(
      (failure) => emit(SignInWithGoogleState.error(failure.message)),
      (user) => emit(SignInWithGoogleState.success(user!)),
    );
  }
}
