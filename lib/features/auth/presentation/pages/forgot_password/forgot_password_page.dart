import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../common/app/presentation/widgets/snackbars/error_snackbar.dart';
import '../../../../../core/routes/app_routes.dart';
import '../../blocs/forget_password/forget_password_bloc.dart';
import '../email_sent/email_sent_page.dart';
import 'widgets/forget_password_body.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgetPasswordBloc, ForgetPasswordState>(
      listener: _handleForgetPasswordState,
      child: Scaffold(
        appBar: AppBar(title: const Text('Forgot Password')),
        body: const ForgetPasswordBody(),
      ),
    );
  }

  void _handleForgetPasswordState(
    BuildContext context,
    ForgetPasswordState state,
  ) {
    state.when(
      initial: () {},
      sendingResetEmail: () {},
      resetEmailSent: () {
        // navigate to email sent page
        _navigateToEmailSentScreen(context);
      },
      resetEmailSendError: (String errorMessage) {
        // show error snackbar
        showErrorSnackbar(context, errorMessage);
      },
    );
  }

  void _navigateToEmailSentScreen(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.emailSent, (route) => false,
        arguments: EmailViewType.passwordReset);
  }
}
