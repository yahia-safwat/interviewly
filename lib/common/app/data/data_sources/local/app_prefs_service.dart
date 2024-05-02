// Define the interface for app preferences operations.

import '../../../../../core/services/cache/shared_prefs_service.dart';

abstract class AppPrefsService {
  // Methods to save and retrieve [isFirstTime] value
  Future<bool> saveFirstTime({required bool value});
  Future<dynamic> getIsFirstTime();

  // Methods to save and retrieve [isDarkMode] value
  Future<bool> saveDarkMode({required bool value});
  Future<dynamic> getDarkMode();

  // Methods to save and retrieve [isDeveloperMode] value
  Future<bool> saveDeveloperMode({required bool value});
  Future<dynamic> getDeveloperMode();

  // Method to clear all preferences
  Future<bool> clearPrefs();
}

// Implement the interface using SharedPrefsService.
class AppPrefsServiceImpl implements AppPrefsService {
  final SharedPrefsService sharedPrefsService;

  AppPrefsServiceImpl({required this.sharedPrefsService});

  @override
  Future<bool> saveFirstTime({required bool value}) async {
    return sharedPrefsService.saveData(key: 'isFirstTime', value: value);
  }

  @override
  Future getIsFirstTime() {
    return sharedPrefsService.getData(key: 'isFirstTime', defaultValue: true);
  }

  @override
  Future<bool> saveDarkMode({required bool value}) async {
    return sharedPrefsService.saveData(key: 'isDarkMode', value: value);
  }

  @override
  Future getDarkMode() {
    return sharedPrefsService.getData(key: 'isDarkMode', defaultValue: false);
  }

  @override
  Future<bool> saveDeveloperMode({required bool value}) async {
    return sharedPrefsService.saveData(key: 'isDeveloperMode', value: value);
  }

  @override
  Future getDeveloperMode() {
    return sharedPrefsService.getData(
        key: 'isDeveloperMode', defaultValue: false);
  }

  @override
  Future<bool> clearPrefs() async {
    return sharedPrefsService.clearCache();
  }
}
