import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/errors/failures.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/edit_user_usecase.dart';

part 'edit_user_event.dart';
part 'edit_user_state.dart';
part 'edit_user_bloc.freezed.dart';

class EditUserBloc extends Bloc<EditUserEvent, EditUserState> {
  final EditUserUseCase editUserUseCase;
  EditUserBloc({required this.editUserUseCase}) : super(const _Initial()) {
    on<_EditUser>(_onEditUser);
  }

  Future<FutureOr<void>> _onEditUser(
    _EditUser event,
    Emitter<EditUserState> emit,
  ) async {
    emit(const _Editing());
    final result = await editUserUseCase(event.user);
    result.fold(
      (failure) => emit(_EditError(_mapFailureToMessage(failure))),
      (user) => emit(_EditSuccess(user)),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    if (failure.message == AppStrings.noInternetConnection) {
      return AppStrings.somethingWentWrongWithConnection;
    }
    return failure.message;
  }
}
