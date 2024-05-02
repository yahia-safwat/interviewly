import '../../../../../core/errors/exceptions.dart';
import '../../../../../core/services/cache/hive_service.dart';
import '../../models/user_model.dart';

abstract class AuthLocalService {
  Future<UserModel?> fetchUser();
  Future<void> saveUser({required UserModel user});
  Future<void> removeUser();
}

class AuthLocalServiceImpl implements AuthLocalService {
  // Hive Service Instance
  final HiveService hiveService = HiveService(boxName: 'user');

  @override
  Future<UserModel?> fetchUser() async {
    try {
      final UserModel? userModel = await hiveService.getData(
        key: 'user',
        defaultValue: null,
      );

      // if userModel is not null, return the user model
      if (userModel != null) return userModel;

      // if userModel is null, return null
      return null;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<void> saveUser({required UserModel user}) async {
    try {
      // Save user model to local storage
      await hiveService.saveData(key: 'user', value: user);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<void> removeUser() async {
    try {
      await hiveService.removeData(key: 'user');
    } catch (e) {
      throw CacheException();
    }
  }
}
