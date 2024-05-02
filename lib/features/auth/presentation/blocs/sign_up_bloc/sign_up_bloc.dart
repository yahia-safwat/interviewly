import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/sign_up_usecase.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCase signUpUseCase;

  SignUpBloc({
    required this.signUpUseCase,
  }) : super(SignUpInitial()) {
    on<SignUpPressed>(_onSignUpPressed);
  }

  void _onSignUpPressed(SignUpPressed event, Emitter<SignUpState> emit) async {
    emit(SignUpLoading());
    final result = await signUpUseCase(event.user, event.password);
    emit(
      result.fold(
        (failure) => SignUpError(errorMessage: failure.message),
        (user) => SignUpSuccess(user: user),
      ),
    );
  }
}
