import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/fetch_user_usecase.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final FetchUserUseCase fetchUserUseCase;

  // Define the current user
  UserEntity? userEntity;

  // Getter to get the current user
  UserEntity? get user => userEntity;

  // Getter to check if the user signed in with email and password
  bool get isEmailPasswordSignIn {
    return userEntity?.authProvider == 'Email&Password';
  }

  // Getter to check if the user email is verified
  bool get isEmailVerified {
    return userEntity?.isEmailVerified ?? false;
  }

  UserBloc({required this.fetchUserUseCase}) : super(const _Initial()) {
    on<UpdateUser>(_onUpdateUser);
    on<SetUser>(_onSetUser);
  }

  _onSetUser(SetUser event, Emitter<UserState> emit) async {
    userEntity = event.user;
    emit(UserState.setSuccess(event.user));
  }

  _onUpdateUser(UpdateUser event, Emitter<UserState> emit) async {
    userEntity = event.user;
    emit(UserState.updateSuccess(event.user));
  }
}
