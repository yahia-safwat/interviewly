import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/app/presentation/widgets/snackbars/error_snackbar.dart';
import '../../../../../common/app/presentation/widgets/snackbars/success_snackbar.dart';
import '../../../../auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../blocs/add_question/add_question_bloc.dart';
import '../../blocs/question/question_bloc.dart';
import 'widgets/add_question_body.dart';

class AddQuestionPage extends StatelessWidget {
  const AddQuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddQuestionBloc, AddQuestionState>(
      listener: _handleState,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Question'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: AddQuestionBody(),
        ),
      ),
    );
  }

  void _handleState(BuildContext context, AddQuestionState state) {
    state.when(
      initial: () => null,
      adding: () => null,
      addSuccess: (user) {
        _showSuccessSnackbar(context, 'Question added successfully');

        // update the user in the User bloc
        context.read<UserBloc>().add(UpdateUser(user));

        // notify the fetch questions bloc
        context.read<QuestionBloc>().add(FetchQuestions(
              user: user,
              clickedCategory: context.read<AddQuestionBloc>().subCategory!,
            ));

        // Navigate back
        Navigator.pop(context);
      },
      addFailure: (errorMsg) => _showErrorSnackbar(context, errorMsg),
    );
  }

  _showErrorSnackbar(BuildContext context, String errorMsg) {
    // Show error message
    showErrorSnackbar(context, errorMsg);
  }

  _showSuccessSnackbar(BuildContext context, String message) {
    // Show Category added successfully
    showSuccessSnackbar(context, message);
  }
}
