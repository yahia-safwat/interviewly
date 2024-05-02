import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/constants/app_strings.dart';
import '../../../../../core/errors/failures.dart';
import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/edit_email_usecase.dart';

part 'edit_email_event.dart';
part 'edit_email_state.dart';
part 'edit_email_bloc.freezed.dart';

class EditEmailBloc extends Bloc<EditEmailEvent, EditEmailState> {
  final EditEmailUseCase editEmailUseCase;
  EditEmailBloc({required this.editEmailUseCase}) : super(const _Initial()) {
    on<_EditEmail>(_onEditEmail);
  }

  _onEditEmail(
    _EditEmail event,
    Emitter<EditEmailState> emit,
  ) async {
    emit(const _Editing());
    final result = await editEmailUseCase(event.user, event.newEmail);
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
