import 'package:hive/hive.dart';

import '../../features/auth/data/models/user_model.dart';
import '../../features/category/data/models/category_model.dart';
import '../../features/category/data/models/subcategory_model.dart';
import '../../features/question/data/models/question_model.dart';

extension HiveExtension on HiveInterface {
  static void registerAdapter() {
    // Register all the Hive adapter classes here
    Hive.registerAdapter(UserModelAdapter());
    Hive.registerAdapter(CategoryModelAdapter());
    Hive.registerAdapter(SubcategoryModelAdapter());
    Hive.registerAdapter(QuestionModelAdapter());
    // Hive.registerAdapter(DateTimeAdapter());

    // Add more adapter registrations as needed
  }
}

// No need to add DateTimeAdapter, since it's already supported by Hive
