import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/app/presentation/widgets/dialogs.dart/error_dialog.dart';
import '../../../../../core/routes/app_routes.dart';
import '../../blocs/edit_email/edit_email_bloc.dart';
import '../email_sent/email_sent_page.dart';
import 'widgets/edit_email_body.dart';

class EditEmailPage extends StatelessWidget {
  const EditEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditEmailBloc, EditEmailState>(
      listener: _handleEditEmailState,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Change Email'),
        ),
        body: const EditEmailBody(),
      ),
    );
  }

  void _handleEditEmailState(BuildContext context, EditEmailState state) {
    state.when(
      initial: () => null,
      editing: () => null,
      editSuccess: (user) {
        // navigate to email sent page
        _navigateToEmailSentScreen(context);
      },
      editError: (errorMessage) {
        // show error dialog
        _showErrorDialog(context, errorMessage);
      },
    );
  }

  void _showErrorDialog(BuildContext context, String errorMessage) {
    showErrorDialog(
      context,
      title: 'Error Changing Email',
      message: errorMessage,
    );
  }

  void _navigateToEmailSentScreen(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.emailSent,
        arguments: EmailViewType.emailChangeView);
  }
}
