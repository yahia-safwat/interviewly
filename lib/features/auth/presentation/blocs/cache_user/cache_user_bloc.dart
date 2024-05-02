import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user_entity.dart';
import '../../../domain/usecases/cache_user_usecase.dart';

part 'cache_user_event.dart';
part 'cache_user_state.dart';
part 'cache_user_bloc.freezed.dart';

class CacheUserBloc extends Bloc<CacheUserEvent, CacheUserState> {
  final CacheUserUseCase cacheUserUseCase;
  CacheUserBloc({required this.cacheUserUseCase}) : super(const _Initial()) {
    on<_CacheUser>(_onCacheUser);
  }

  Future<FutureOr<void>> _onCacheUser(
    _CacheUser event,
    Emitter<CacheUserState> emit,
  ) async {
    emit(const _Caching());
    final result = await cacheUserUseCase(event.user);
    result.fold(
      (failure) => emit(_CacheError(errorMessage: failure.message)),
      (user) => emit(_CacheSuccess(user: user)),
    );
  }
}
