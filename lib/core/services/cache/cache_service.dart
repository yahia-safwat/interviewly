/// Interface for cache operations.
abstract class CacheService {
  /// Saves data to the cache with the specified [key].
  ///
  /// Returns `true` if the data is successfully saved, `false` otherwise.
  Future<bool> saveData({required String key, required dynamic value});

  /// Retrieves data from the cache with the specified [key].
  ///
  /// Returns the cached data or the [defaultValue] if the data is not found.
  Future<dynamic> getData({required String key, required dynamic defaultValue});

  /// Removes data from the cache with the specified [key].
  ///
  /// Returns `true` if the data is successfully removed, `false` otherwise.
  Future<bool> removeData({required String key});

  /// Clears the entire cache.
  ///
  /// Returns `true` if the cache is successfully cleared, `false` otherwise.
  Future<bool> clearCache();
}
