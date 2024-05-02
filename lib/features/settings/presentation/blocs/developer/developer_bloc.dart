import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/toggle_developer_mode.dart';

part 'developer_event.dart';
part 'developer_state.dart';
part 'developer_bloc.freezed.dart';

class DeveloperBloc extends Bloc<DeveloperEvent, DeveloperState> {
  final ToggleDeveloperModeUseCase toggleDeveloperModeUseCase;
  DeveloperBloc({required this.toggleDeveloperModeUseCase})
      : super(const _Initial()) {
    on<_ToggleDeveloperMode>(_onToggleDeveloperMode);
  }

  Future<FutureOr<void>> _onToggleDeveloperMode(
      _ToggleDeveloperMode event, Emitter<DeveloperState> emit) async {
    final result = await toggleDeveloperModeUseCase(event.value);
    result.fold(
      (failure) => emit(const _DeveloperModeChanged(DeveloperMode.off)),
      (success) {
        // If success, toggle the developer mode and update the state
        final isDeveloperModeEnabled = event.value;

        if (isDeveloperModeEnabled) {
          emit(const _DeveloperModeChanged(DeveloperMode.on));
        } else {
          emit(const _DeveloperModeChanged(DeveloperMode.off));
        }
      },
    );
  }
}
