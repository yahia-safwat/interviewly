import 'package:flutter/material.dart';

import 'widgets/email_change_view.dart';
import 'widgets/email_verification_view.dart';
import 'widgets/password_reset_view.dart';

enum EmailViewType { emailChangeView, emailVerification, passwordReset }

class EmailSentPage extends StatelessWidget {
  final EmailViewType viewType;

  const EmailSentPage({super.key, required this.viewType});

  @override
  Widget build(BuildContext context) {
    switch (viewType) {
      case EmailViewType.emailChangeView:
        return const EmailChangeView();
      case EmailViewType.emailVerification:
        return const EmailVerificationView();
      case EmailViewType.passwordReset:
        return const PasswordResetView();
      // Handle other cases
      default:
        return const Center(child: Text('View not found'));
    }
  }
}
