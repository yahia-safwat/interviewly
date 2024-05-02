import 'package:shared_preferences/shared_preferences.dart';

import 'cache_service.dart';

/// Implementation of cache operations using SharedPreferences.
class SharedPrefsService implements CacheService {
  static final SharedPrefsService _instance = SharedPrefsService._internal();

  // SharedPreferences instance
  static late SharedPreferences _preferences;

  // Singleton instance of SharedPrefsService
  factory SharedPrefsService() => _instance;

  // Private constructor for singleton
  SharedPrefsService._internal();

  // Initializes the SharedPreferences instance.
  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  @override
  Future<bool> saveData({required String key, required dynamic value}) async {
    if (value is String) {
      return await _preferences.setString(key, value);
    } else if (value is int) {
      return await _preferences.setInt(key, value);
    } else if (value is double) {
      return await _preferences.setDouble(key, value);
    } else if (value is bool) {
      return await _preferences.setBool(key, value);
    } else if (value is List<String>) {
      return await _preferences.setStringList(key, value);
    }

    return false; // Unsupported data type
  }

  @override
  Future<dynamic> getData({
    required String key,
    required dynamic defaultValue,
  }) async {
    if (defaultValue is String) {
      return _preferences.getString(key) ?? defaultValue;
    } else if (defaultValue is int) {
      return _preferences.getInt(key) ?? defaultValue;
    } else if (defaultValue is double) {
      return _preferences.getDouble(key) ?? defaultValue;
    } else if (defaultValue is bool) {
      return _preferences.getBool(key) ?? defaultValue;
    } else if (defaultValue is List<String>) {
      return _preferences.getStringList(key) ?? defaultValue;
    }

    return defaultValue; // Unsupported data type
  }

  @override
  Future<bool> removeData({required String key}) async {
    return await _preferences.remove(key);
  }

  @override
  Future<bool> clearCache() async {
    return await _preferences.clear();
  }
}
