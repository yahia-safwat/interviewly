import 'package:hive_flutter/hive_flutter.dart';

import 'cache_service.dart';

/// Service for managing cache operations using Hive.
class HiveService implements CacheService {
  final String boxName;

  HiveService({required this.boxName});

  /// Saves data to the cache with the specified [key] and [value].
  ///
  /// Returns `true` if the data is successfully saved, `false` otherwise.
  @override
  Future<bool> saveData({required String key, required dynamic value}) async {
    final box = await Hive.openBox(boxName);
    await box.put(key, value);
    return true;
  }

  /// Retrieves data from the cache with the specified [key].
  ///
  /// Returns the cached data or the [defaultValue] if the data is not found.
  @override
  Future<dynamic> getData({
    required String key,
    required dynamic defaultValue,
  }) async {
    final box = await Hive.openBox(boxName);
    final boxData = box.get(key, defaultValue: defaultValue);
    return boxData;
  }

  /// Removes data from the cache with the specified [key].
  ///
  /// Returns `true` if the data is successfully removed, `false` otherwise.
  @override
  Future<bool> removeData({required String key}) async {
    final box = await Hive.openBox(boxName);
    await box.delete(key);
    return true;
  }

  /// Clears the entire cache.
  ///
  /// Returns `true` if the cache is successfully cleared, `false` otherwise.
  @override
  Future<bool> clearCache() async {
    await Hive.deleteFromDisk();
    return true;
  }
}
