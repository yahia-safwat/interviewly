import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/sign_in_with_email_usecase.dart';

part 'sign_in_with_email_event.dart';
part 'sign_in_with_email_state.dart';

class SignInWithEmailBloc
    extends Bloc<SignInWithEmailEvent, SignInWithEmailState> {
  final SignInWithEmailUseCase signInWithEmailUseCase;

  SignInWithEmailBloc({
    required this.signInWithEmailUseCase,
  }) : super(SignInWithEmailInitial()) {
    on<SignInWithEmailPressed>(_onSignInPressed);
  }

  void _onSignInPressed(
      SignInWithEmailPressed event, Emitter<SignInWithEmailState> emit) async {
    emit(SignInWithEmailLoading());
    final result = await signInWithEmailUseCase(event.email, event.password);
    emit(
      result.fold(
        (failure) => SignInWithEmailError(errorMessage: failure.message),
        (user) => SignInWithEmailSuccess(user: user),
      ),
    );
  }
}
