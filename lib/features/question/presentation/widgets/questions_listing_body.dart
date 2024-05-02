import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewly/features/question/domain/entities/question_entity.dart';

import '../../../../common/app/presentation/widgets/snackbars/error_snackbar.dart';
import '../../../../common/app/presentation/widgets/snackbars/success_snackbar.dart';
import '../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../blocs/delete_question/delete_question_bloc.dart';
import '../blocs/question/question_bloc.dart';
import 'questions_list_view.dart';

class QuestionsListingBody extends StatelessWidget {
  final List<QuestionEntity> questions;
  const QuestionsListingBody(this.questions, {super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeleteQuestionBloc, DeleteQuestionState>(
      listener: _handleState,
      child: QuestionsListView(questions: questions),
    );
  }

  void _handleState(
    BuildContext context,
    DeleteQuestionState state,
  ) {
    state.when(
        initial: () => null,
        deleting: () => null,
        deleteSuccess: (user) {
          // show success snackbar
          showSuccessSnackbar(context, 'Successfully deleted question');

          // update the user in the User bloc
          context.read<UserBloc>().add(UpdateUser(user));

          // notify the Question bloc
          context.read<QuestionBloc>().add(FetchQuestions(
                user: user,
                clickedCategory:
                    context.read<QuestionBloc>().clickedsubcategory!,
              ));
        },
        deleteFailure: (errorMessage) {
          // show error snackbar
          showErrorSnackbar(context, errorMessage);
        });
  }
}
