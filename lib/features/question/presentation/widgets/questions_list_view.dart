import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../domain/entities/question_entity.dart';
import '../blocs/delete_question/delete_question_bloc.dart';
import '../blocs/edit_question/edit_question_bloc.dart';
import 'question_list_item.dart';

class QuestionsListView extends StatelessWidget {
  const QuestionsListView({
    super.key,
    required this.questions,
  });

  final List<QuestionEntity> questions;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: questions.length,
      itemBuilder: (context, index) {
        final question = questions[index];
        return QuestionListItem(
          question: question,
          onRemove: () {
            // add remove event
            context
                .read<DeleteQuestionBloc>()
                .add(DeleteQuestionEvent.deleteQuestion(
                  user: context.read<UserBloc>().user!,
                  question: question,
                ));
          },
          onEdit: () {
            // save
            context.read<EditQuestionBloc>().question = question;

            // Navigate to edit category page
            Navigator.pushNamed(
              context,
              AppRoutes.editQuestion,
            );
          },
        );
      },
    );
  }
}
