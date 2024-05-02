class QuestionEntity {
  final String id;
  final String userUid;
  final String categoryId;
  final String subcategoryId;
  final String questionText;
  final String answerText;
  final bool isFavorited;
  final bool isCommon;
  final bool knowsAnswer;
  final DateTime createdAt;

  QuestionEntity({
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
  });

  QuestionEntity copyWithEntity({
    String? id,
    String? userUid,
    String? categoryId,
    String? subcategoryId,
    String? questionText,
    String? answerText,
    bool? isFavorited,
    bool? isCommon,
    bool? knowsAnswer,
    DateTime? createdAt,
  }) {
    return QuestionEntity(
      id: id ?? this.id,
      userUid: userUid ?? this.userUid,
      categoryId: categoryId ?? this.categoryId,
      subcategoryId: subcategoryId ?? this.subcategoryId,
      questionText: questionText ?? this.questionText,
      answerText: answerText ?? this.answerText,
      isFavorited: isFavorited ?? this.isFavorited,
      isCommon: isCommon ?? this.isCommon,
      knowsAnswer: knowsAnswer ?? this.knowsAnswer,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
