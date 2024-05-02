import '../../../category/domain/entities/category_entity.dart';
import '../../../question/domain/entities/question_entity.dart';

class UserEntity {
  final String uid;
  final String email;
  final String displayName;
  final String authProvider;
  final bool isEmailVerified;
  final String? jobTitle;
  final bool isStudent;
  final List<CategoryEntity> categories;
  final List<QuestionEntity> questions;

  UserEntity({
    required this.uid,
    required this.email,
    required this.displayName,
    required this.authProvider,
    required this.isEmailVerified,
    this.jobTitle,
    required this.isStudent,
    required this.categories,
    required this.questions,
  });

  UserEntity copyWithEntity({
    String? uid,
    String? email,
    String? displayName,
    String? authProvider,
    bool? isEmailVerified,
    String? jobTitle,
    bool? isStudent,
    List<CategoryEntity>? categories,
    List<QuestionEntity>? questions,
  }) {
    return UserEntity(
      uid: uid ?? this.uid,
      email: email ?? this.email,
      displayName: displayName ?? this.displayName,
      authProvider: authProvider ?? this.authProvider,
      isEmailVerified: isEmailVerified ?? this.isEmailVerified,
      jobTitle: jobTitle ?? this.jobTitle,
      isStudent: isStudent ?? this.isStudent,
      categories: categories ?? this.categories,
      questions: questions ?? this.questions,
    );
  }
}
