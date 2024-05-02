import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../common/app/presentation/widgets/dialogs.dart/error_dialog.dart';
import '../../../../../../common/app/presentation/widgets/snackbars/error_snackbar.dart';
import '../../../../../../common/app/presentation/widgets/snackbars/success_snackbar.dart';
import '../../../../../../core/routes/app_routes.dart';
import '../../../blocs/delete_cached_user/delete_cached_user_bloc.dart';
import '../../../blocs/delete_user/delete_user_bloc.dart';
import '../../../blocs/verify_email/verify_email_bloc.dart';
import '../../email_sent/email_sent_page.dart';
import 'account_page_listview.dart';

class AccountPageBody extends StatelessWidget {
  const AccountPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: const [
        BlocListener<DeleteUserBloc, DeleteUserState>(
          listener: _handleDeleteUserState,
        ),
        BlocListener<VerifyEmailBloc, VerifyEmailState>(
          listener: _handleVerifyEmailState,
        ),
      ],
      child: const AccountPageListView(),
    );
  }
}

void _handleDeleteUserState(BuildContext context, DeleteUserState state) {
  state.when(
    initial: () => null,
    deleting: () => null,
    deleteSuccess: () {
      // delete the cached user
      context
          .read<DeleteCachedUserBloc>()
          .add(const DeleteCachedUserEvent.deleteCachedUser());

      // show success snackbar
      showSuccessSnackbar(context, 'Successfully deleted account');

      // navigate to login screen
      Navigator.pushNamedAndRemoveUntil(
          context, AppRoutes.signIn, (route) => false);
    },
    deleteError: (errorMessage) {
      // show error dialog
      _showErrorDialog(context, errorMessage);
    },
  );
}

void _showErrorDialog(context, String errorMessage) {
  return showErrorDialog(
    context,
    title: 'Error Deleting Account',
    message: errorMessage,
  );
}

void _handleVerifyEmailState(context, VerifyEmailState state) {
  state.whenOrNull(
    sentSuccess: () {
      // Navigate to email sent page
      _navigateToEmailSentScreen(context);
    },
    sentError: (errorMessage) {
      // show error snackbar
      showErrorSnackbar(context, errorMessage);
    },
  );
}

void _navigateToEmailSentScreen(context) {
  Navigator.pushNamed(context, AppRoutes.emailSent,
      arguments: EmailViewType.emailVerification);
}
