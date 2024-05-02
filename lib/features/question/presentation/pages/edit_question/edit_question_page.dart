import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/app/presentation/widgets/snackbars/error_snackbar.dart';
import '../../../../../common/app/presentation/widgets/snackbars/success_snackbar.dart';
import '../../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../blocs/edit_question/edit_question_bloc.dart';
import '../../blocs/question/question_bloc.dart';
import 'widgets/edit_question_body.dart';

class EditQuestionPage extends StatelessWidget {
  const EditQuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditQuestionBloc, EditQuestionState>(
      listener: _handleState,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit Question'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: EditQuestionBody(),
        ),
      ),
    );
  }

  void _handleState(BuildContext context, EditQuestionState state) {
    state.when(
      initial: () => null,
      editing: () => null,
      editSuccess: (user) {
        _showSuccessSnackbar(context, 'Question edited successfully');

        // update the user in the User bloc
        context.read<UserBloc>().add(UpdateUser(user));

        // notify the Question bloc
        context.read<QuestionBloc>().add(FetchQuestions(
              user: user,
              clickedCategory: context.read<QuestionBloc>().clickedsubcategory!,
            ));

        // Navigate back
        Navigator.pop(context);
      },
      editFailure: (errorMsg) => _showErrorSnackbar(context, errorMsg),
    );
  }

  _showErrorSnackbar(BuildContext context, String errorMsg) {
    // Show error message
    showErrorSnackbar(context, errorMsg);
  }

  _showSuccessSnackbar(BuildContext context, String message) {
    // Show Category edited successfully
    showSuccessSnackbar(context, message);
  }
}
