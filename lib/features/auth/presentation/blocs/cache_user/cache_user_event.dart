part of 'cache_user_bloc.dart';

@freezed
class CacheUserEvent with _$CacheUserEvent {
  const factory CacheUserEvent.started() = _Started;

  const factory CacheUserEvent.cacheUser({required UserEntity user}) =
      _CacheUser;
}
