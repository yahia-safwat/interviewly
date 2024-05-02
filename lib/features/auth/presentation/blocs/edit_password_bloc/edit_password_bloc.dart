import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/edit_password_usecase.dart';

part 'edit_password_event.dart';
part 'edit_password_state.dart';
part 'edit_password_bloc.freezed.dart';

class EditPasswordBloc extends Bloc<EditPasswordEvent, EditPasswordState> {
  final EditPasswordUseCase editPasswordUseCase;
  EditPasswordBloc({required this.editPasswordUseCase})
      : super(const _Initial()) {
    on<_ChangePassword>(_onChangePassword);
  }

  _onChangePassword(
      _ChangePassword event, Emitter<EditPasswordState> emit) async {
    emit(const EditPasswordState.editing());
    final result = await editPasswordUseCase(
      event.userEntity,
      event.currentPassword,
      event.newPassword,
    );
    result.fold(
      (failure) => emit(EditPasswordState.editError(failure.message)),
      (user) => emit(const EditPasswordState.editSuccess()),
    );
  }
}
