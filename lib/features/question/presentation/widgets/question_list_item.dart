import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/app/presentation/widgets/dialogs.dart/delete_confirmation_dialog.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../domain/entities/question_entity.dart';
import '../blocs/question/question_bloc.dart';

class QuestionListItem extends StatelessWidget {
  final QuestionEntity question;
  final VoidCallback? onRemove;
  final VoidCallback? onEdit;

  const QuestionListItem({
    super.key,
    required this.question,
    required this.onRemove,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      color: question.knowsAnswer
          ? (Theme.of(context).brightness == Brightness.dark
              ? Colors.grey[850]
              : Colors.grey[200])
          : (Theme.of(context).brightness == Brightness.dark
              ? Colors.white24
              : Colors.white),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        title: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {
            // Navigate to the [QuestionPage] page when the ListTile is tapped
            Navigator.pushNamed(context, AppRoutes.question,
                arguments: question);
          },
          onLongPress: () => showDeleteConfirmationDialog(
            context,
            message: 'Are you sure you want to delete this question?',
            onRemove: onRemove,
          ),
          onDoubleTap: onEdit,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
            child: Text(
              question.questionText,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        trailing: InkWell(
          onTap: () {
            // Toggle the "knowsAnswer" flag
            context.read<QuestionBloc>().add(ToggleQuestionStatus(
                  user: context.read<UserBloc>().user!,
                  question: question,
                ));
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: question.knowsAnswer ? Colors.green[200] : Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              question.knowsAnswer ? Icons.check : Icons.help,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
