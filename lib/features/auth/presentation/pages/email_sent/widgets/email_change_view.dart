import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../widgets/custom_btn.dart';
import '../../../widgets/email_sent_text.dart';
import '../../../widgets/sign_in_prompt_text.dart';

class EmailChangeView extends StatelessWidget {
  const EmailChangeView({super.key});

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
                      'An email has been sent to your new Email inbox. Please check your inbox to confirm updating your email address.'),
              const SizedBox(height: 120),
              CustomButton(
                width: 200, // Adjust the width as needed
                borderRadius: 10,
                text: 'Back',
                onPressed: () {
                  // Navigate back
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 20),
              const SignInPromptText(text: 'After confirming your email'),
            ],
          ),
        ),
      ),
    );
  }
}
