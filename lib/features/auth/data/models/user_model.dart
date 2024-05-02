// ignore_for_file: overridden_fields

import 'package:hive_flutter/hive_flutter.dart';

import '../../../category/data/models/category_model.dart';
import '../../../question/data/models/question_model.dart';
import '../../domain/entities/user_entity.dart';

part 'user_model.g.dart';

@HiveType(typeId: 1)
class UserModel extends UserEntity {
  @override
  @HiveField(0)
  final String uid;

  @override
  @HiveField(1)
  final String email;

  @override
  @HiveField(2)
  final String displayName;

  @override
  @HiveField(3)
  final String authProvider;

  @override
  @HiveField(4)
  final bool isEmailVerified;

  @override
  @HiveField(5)
  final String? jobTitle;

  @override
  @HiveField(6)
  final bool isStudent;

  @HiveField(7)
  final List<CategoryModel> categoryModels;

  @HiveField(8)
  final List<QuestionModel> questionModels;

  UserModel({
    required this.uid,
    required this.email,
    required this.displayName,
    required this.authProvider,
    required this.isEmailVerified,
    required this.jobTitle,
    required this.isStudent,
    required this.categoryModels,
    required this.questionModels,
  }) : super(
          uid: uid,
          email: email,
          displayName: displayName,
          authProvider: authProvider,
          isEmailVerified: isEmailVerified,
          jobTitle: jobTitle,
          isStudent: isStudent,
          categories: categoryModels.map((model) => model.toEntity()).toList(),
          questions: questionModels.map((model) => model.toEntity()).toList(),
        );
  // Deserialize JSON to UserModel
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      authProvider: json['authProvider'] as String,
      isEmailVerified: json['isEmailVerified'] as bool? ??
          false, // Provide default value if null
      jobTitle: json['jobTitle'] as String?,
      isStudent:
          json['isStudent'] as bool? ?? false, // Provide default value if null
      categoryModels: (json['categoryModels'] as List? ?? [])
          .map((categoryJson) => CategoryModel.fromJson(categoryJson))
          .toList(),
      questionModels: (json['questionModels'] as List? ?? [])
          .map((questionJson) => QuestionModel.fromJson(questionJson))
          .toList(),
    );
  }

  // Deserialize Document snapshot to UserModel
  factory UserModel.fromDocument(Map<String, dynamic> json) {
    final List<dynamic> categoryList = json['categories'] ?? [];
    final List<CategoryModel> categories = categoryList.map((categoryJson) {
      return CategoryModel.fromJson(categoryJson);
    }).toList();

    final List<dynamic> questionList = json['questions'] ?? [];
    final List<QuestionModel> questions = questionList.map((questionJson) {
      return QuestionModel.fromJson(questionJson);
    }).toList();

    return UserModel(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      authProvider: json['authProvider'] as String,
      isEmailVerified: json['isEmailVerified'] as bool,
      jobTitle: json['jobTitle'] as String?,
      isStudent: json['isStudent'] as bool,
      categoryModels: categories,
      questionModels: questions,
    );
  }

  // Serialize UserModel to JSON format
  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'displayName': displayName,
      'authProvider': authProvider,
      'isEmailVerified': isEmailVerified,
      'jobTitle': jobTitle,
      'isStudent': isStudent,
      'categoryModels':
          categoryModels.map((category) => category.toJson()).toList(),
      'questionModels':
          questionModels.map((question) => question.toJson()).toList(),
    };
  }

  // Serialize UserModel to Document snapshot
  Map<String, dynamic> toDocument() {
    return {
      'uid': uid,
      'email': email,
      'displayName': displayName,
      'authProvider': authProvider,
      'isEmailVerified': isEmailVerified,
      'jobTitle': jobTitle,
      'isStudent': isStudent,
    };
  }

  // Mapper function to convert UserEntity to UserModel
  factory UserModel.fromEntity(UserEntity entity) {
    final categoryModels = entity.categories.map((category) {
      return CategoryModel.fromEntity(category);
    }).toList();

    final questionModels = entity.questions.map((question) {
      return QuestionModel.fromEntity(question);
    }).toList();
    return UserModel(
      uid: entity.uid,
      email: entity.email,
      displayName: entity.displayName,
      authProvider: entity.authProvider,
      isEmailVerified: entity.isEmailVerified,
      jobTitle: entity.jobTitle,
      isStudent: entity.isStudent,
      categoryModels: categoryModels,
      questionModels: questionModels,
    );
  }

  // Mapper function to convert UserModel to UserEntity
  UserEntity toEntity() {
    return UserEntity(
      uid: uid,
      email: email,
      displayName: displayName,
      authProvider: authProvider,
      isEmailVerified: isEmailVerified,
      jobTitle: jobTitle,
      isStudent: isStudent,
      categories:
          categoryModels.map((category) => category.toEntity()).toList(),
      questions: questionModels.map((question) => question.toEntity()).toList(),
    );
  }

  @override
  String toString() {
    return 'UserModel{uid: $uid, email: $email, displayName: $displayName, authProvider: $authProvider, isEmailVerified: $isEmailVerified, jobTitle: $jobTitle, isStudent: $isStudent, categoryModels: $categoryModels, questionModels: $questionModels}';
  }

  UserModel copyWith({
    String? uid,
    String? email,
    String? displayName,
    String? authProvider,
    bool? isEmailVerified,
    String? jobTitle,
    bool? isStudent,
    List<CategoryModel>? categoryModels,
    List<QuestionModel>? questionModels,
  }) {
    return UserModel(
      uid: uid ?? this.uid,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      authProvider: authProvider ?? this.authProvider,
      isEmailVerified: isEmailVerified ?? this.isEmailVerified,
      jobTitle: jobTitle ?? this.jobTitle,
      isStudent: isStudent ?? this.isStudent,
      categoryModels: categoryModels ?? this.categoryModels,
      questionModels: questionModels ?? this.questionModels,
    );
  }
}
