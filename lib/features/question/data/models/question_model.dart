// ignore_for_file: overridden_fields

import 'package:hive_flutter/hive_flutter.dart';

import '../../domain/entities/question_entity.dart';

part 'question_model.g.dart';

@HiveType(typeId: 4)
class QuestionModel extends QuestionEntity {
  @override
  @HiveField(0)
  final String id;

  @override
  @HiveField(1)
  final String userUid;

  @override
  @HiveField(2)
  final String categoryId;

  @override
  @HiveField(3)
  final String subcategoryId;

  @override
  @HiveField(4)
  final String questionText;

  @override
  @HiveField(5)
  final String answerText;

  @override
  @HiveField(6)
  final bool isFavorited;

  @override
  @HiveField(7)
  final bool isCommon;

  @override
  @HiveField(8)
  final bool knowsAnswer;

  @override
  @HiveField(9)
  final DateTime createdAt;

  QuestionModel({
    required this.id,
    required this.userUid,
    required this.categoryId,
    required this.subcategoryId,
    required this.questionText,
    required this.answerText,
    required this.isFavorited,
    required this.isCommon,
    required this.knowsAnswer,
    required this.createdAt,
  }) : super(
          id: id,
          userUid: userUid,
          categoryId: categoryId,
          subcategoryId: subcategoryId,
          questionText: questionText,
          answerText: answerText,
          isFavorited: isFavorited,
          isCommon: isCommon,
          knowsAnswer: knowsAnswer,
          createdAt: createdAt,
        );

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    return QuestionModel(
      id: json['id'] as String,
      userUid: json['userUid'] as String,
      categoryId: json['categoryId'] as String,
      subcategoryId: json['subcategoryId'] as String,
      questionText: json['questionText'] as String,
      answerText: json['answerText'] as String,
      isFavorited: json['isFavorited'] as bool? ??
          false, // Provide default value if null
      isCommon:
          json['isCommon'] as bool? ?? false, // Provide default value if null
      knowsAnswer: json['knowsAnswer'] as bool? ??
          false, // Provide default value if null
      createdAt: json['createdAt'].toDate() as DateTime,
    );
  }

  // Mapper function to convert QuestionEntity to QuestionModel
  factory QuestionModel.fromEntity(QuestionEntity question) {
    return QuestionModel(
      id: question.id,
      userUid: question.userUid,
      categoryId: question.categoryId,
      subcategoryId: question.subcategoryId,
      questionText: question.questionText,
      answerText: question.answerText,
      isFavorited: question.isFavorited,
      isCommon: question.isCommon,
      knowsAnswer: question.knowsAnswer,
      createdAt: question.createdAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userUid': userUid,
      'categoryId': categoryId,
      'subcategoryId': subcategoryId,
      'questionText': questionText,
      'answerText': answerText,
      'isFavorited': isFavorited,
      'isCommon': isCommon,
      'knowsAnswer': knowsAnswer,
      'createdAt': createdAt,
    };
  }

  // Serialize QuestionModel to Document format
  Map<String, dynamic> toDocument() {
    return {
      'id': id,
      'userUid': userUid,
      'categoryId': categoryId,
      'subcategoryId': subcategoryId,
      'questionText': questionText,
      'answerText': answerText,
      'isFavorited': isFavorited,
      'isCommon': isCommon,
      'knowsAnswer': knowsAnswer,
      'createdAt': createdAt,
    };
  }

  QuestionEntity toEntity() {
    return QuestionEntity(
      id: id,
      userUid: userUid,
      categoryId: categoryId,
      subcategoryId: subcategoryId,
      questionText: questionText,
      answerText: answerText,
      isFavorited: isFavorited,
      isCommon: isCommon,
      knowsAnswer: knowsAnswer,
      createdAt: createdAt,
    );
  }
}
