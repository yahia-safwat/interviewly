import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/delete_cached_user_usecase.dart';

part 'delete_cached_user_event.dart';
part 'delete_cached_user_state.dart';
part 'delete_cached_user_bloc.freezed.dart';

class DeleteCachedUserBloc
    extends Bloc<DeleteCachedUserEvent, DeleteCachedUserState> {
  final DeleteCachedUserUseCase deleteCachedUserUseCase;
  DeleteCachedUserBloc({required this.deleteCachedUserUseCase})
      : super(const _Initial()) {
    on<_DeleteCachedUser>(_onDeleteCachedUser);
  }

  Future<FutureOr<void>> _onDeleteCachedUser(
    _DeleteCachedUser event,
    Emitter<DeleteCachedUserState> emit,
  ) async {
    emit(const _Deleting());
    final result = await deleteCachedUserUseCase();
    result.fold(
      (failure) => emit(_DeleteError(failure.message)),
      (success) => emit(const _DeleteSuccess()),
    );
  }
}
