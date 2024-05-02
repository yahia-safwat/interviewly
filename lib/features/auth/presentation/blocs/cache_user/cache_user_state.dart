part of 'cache_user_bloc.dart';

@freezed
class CacheUserState with _$CacheUserState {
  const factory CacheUserState.initial() = _Initial;
  const factory CacheUserState.caching() = _Caching;
  const factory CacheUserState.cacheSuccess({required UserEntity user}) =
      _CacheSuccess;
  const factory CacheUserState.cacheError({required String errorMessage}) =
      _CacheError;
}
