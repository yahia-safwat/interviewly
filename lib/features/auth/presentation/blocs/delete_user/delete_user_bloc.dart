import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/errors/failures.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/delete_user_usecase.dart';

part 'delete_user_event.dart';
part 'delete_user_state.dart';
part 'delete_user_bloc.freezed.dart';

class DeleteUserBloc extends Bloc<DeleteUserEvent, DeleteUserState> {
  final DeleteUserUseCase deleteUserUseCase;

  DeleteUserBloc({required this.deleteUserUseCase}) : super(const _Initial()) {
    on<_DeleteUser>(_onDeleteUser);
  }

  Future<FutureOr<void>> _onDeleteUser(
    _DeleteUser event,
    Emitter<DeleteUserState> emit,
  ) async {
    emit(const _Deleting());
    final result = await deleteUserUseCase(event.user);
    result.fold(
      (failure) => emit(_DeleteError(_mapFailureToMessage(failure))),
      (success) => emit(const _DeleteSuccess()),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    if (failure.message == AppStrings.noInternetConnection) {
      return AppStrings.somethingWentWrongWithConnection;
    }
    return failure.message;
  }
}
