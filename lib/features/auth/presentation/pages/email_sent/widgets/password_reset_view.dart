import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/routes/app_routes.dart';
import '../../../widgets/custom_btn.dart';
import '../../../widgets/email_sent_text.dart';

class PasswordResetView extends StatelessWidget {
  const PasswordResetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(40),
                child: SvgPicture.asset(
                  'assets/svgs/email-sent.svg',
                  width: 120,
                  height: 120,
                ),
              ),
              const SizedBox(height: 20),
              const EmailSentText(
                  message:
                      'An email has been sent to your inbox. Please check your email to reset your password.'),
              const SizedBox(height: 120),
              CustomButton(
                width: 200, // Adjust the width as needed
                borderRadius: 10,
                text: 'Go to Login',
                onPressed: () {
                  // Navigate to the login screen
                  _navigateToLoginScreen(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.signIn, (route) => false);
  }
}
