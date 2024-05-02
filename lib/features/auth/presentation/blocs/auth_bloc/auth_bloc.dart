import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entities/user_entity.dart';

import '../../../domain/usecases/auth_stream_usecase.dart';
import '../../../domain/usecases/fetch_user_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthStreamUseCase authStreamUseCase;
  final FetchUserUseCase fetchUserUseCase;

  // Define Streams for each authentication state
  late StreamSubscription _authStreamSubscription;

  // Define the error message
  String? errorMessageOrNull;

  // Getter for the error message
  String? get errorMessage => errorMessageOrNull;

  AuthBloc({
    required this.authStreamUseCase,
    required this.fetchUserUseCase,
  }) : super(AuthInitial()) {
    on<AuthStateChanges>(_onAuthStateChanges);
    on<AuthStateError>(_onAuthStateError);

    // Listen to the authentication stream
    _authStreamSubscription = authStreamUseCase().listen((result) {
      result.fold(
        (failure) {
          add(AuthStateError(failure.message));
        },
        (userId) {
          add(AuthStateChanges(userId));
        },
      );
    });
  }

  Future<void> _onAuthStateError(
    AuthStateError event,
    Emitter<AuthState> emit,
  ) async {
    // Load Splash Screen for 1 second
    await Future.delayed(const Duration(seconds: 1));

    errorMessageOrNull = event.errorMessage;
    emit(AuthError(errorMessage: event.errorMessage));
  }

  Future<void> _onAuthStateChanges(
    AuthStateChanges event,
    Emitter<AuthState> emit,
  ) async {
    // Load Splash Screen for 1 second
    await Future.delayed(const Duration(milliseconds: 1000));
    // emit(AuthLoading());

    if (event.userId == null) {
      emit(Unauthenticated());
    } else {
      final result = await fetchUserUseCase(event.userId!);
      result.fold(
        (failure) {
          errorMessageOrNull = failure.message;
          emit(AuthError(errorMessage: failure.message));
        },
        (userId) {
          if (userId != null) {
            emit(Authenticated(user: userId));
          } else {
            emit(Unauthenticated());
          }
        },
      );
    }
  }

  // Close the stream subscriptions
  @override
  Future<void> close() {
    _authStreamSubscription.cancel();
    return super.close();
  }
}
