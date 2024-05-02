import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/routes/app_routes.dart';
import '../../../widgets/custom_btn.dart';
import '../../../widgets/email_sent_text.dart';
import '../../../widgets/sign_in_prompt_text.dart';

class EmailVerificationView extends StatelessWidget {
  const EmailVerificationView({super.key});

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
                padding: const EdgeInsets.all(60),
                child: SvgPicture.asset(
                  'assets/svgs/email-verification.svg',
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const EmailSentText(
                  message:
                      'An email has been sent to your inbox. Please check your inbox to verify your email address'),
              const SizedBox(height: 120),
              CustomButton(
                width: 200, // Adjust the width as needed
                borderRadius: 10,
                text: 'Continue to Home',
                onPressed: () {
                  // Navigate to the home screen
                  _navigateToHomeScreen(context);
                },
              ),
              const SizedBox(height: 20),
              const SignInPromptText(text: 'After verifying your email'),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToHomeScreen(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.home, (route) => false);
  }
}
