import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:interviewly/features/auth/data/models/user_model.dart';

// Enum to represent the possible types of dummy data
enum DummyDataType { userModel }

class DummyDataUtil {
  /// Reads the contents of a JSON file from the assets folder.
  ///
  /// The [fileName] parameter specifies the name of the JSON file to be read.
  /// This function asynchronously loads the JSON file from the assets folder
  /// and returns its contents as a string.
  ///
  /// Example:
  /// ```dart
  /// String jsonData = await readJson(fileName: 'example.json');
  /// print(jsonData); // Print the JSON data
  /// ```
  static Future<String> readJson({required String file}) async {
    return await rootBundle.loadString('assets/json/$file');
  }

  /// Retrieves dummy data from a JSON file and returns it as the specified data type.
  ///
  /// The [jsonfile] parameter specifies the path to the JSON file containing the dummy data.
  /// The [dataType] parameter specifies the type of data to retrieve.
  /// Returns the dummy data as the specified data type.
  /// Throws an [ArgumentError] if an invalid data type is provided.
  static dynamic getDummyData({
    required String jsonfile,
    required DummyDataType dataType,
  }) async {
    // Read JSON data from the specified file
    String jsonData = await readJson(file: jsonfile);

    // Convert JSON data to the specified data type
    return _convertToDataType(jsonData, dataType);
  }

  /// Converts JSON data to the specified data type.
  ///
  /// The [jsonData] parameter specifies the JSON data to convert.
  /// The [dataType] parameter specifies the type of data to convert to.
  /// Returns the converted data of the specified type.
  /// Throws an [ArgumentError] if an invalid data type is provided.
  static dynamic _convertToDataType(String jsonData, DummyDataType dataType) {
    switch (dataType) {
      case DummyDataType.userModel:
        // Return UserModel data
        return UserModel.fromJson(jsonDecode(jsonData));
      default:
        // Throw an error for invalid data type
        throw ArgumentError('Invalid dummy data type: $dataType');
    }
  }
}
