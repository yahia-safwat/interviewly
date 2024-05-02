import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';

class SignInPromptText extends StatelessWidget {
  final String text;
  const SignInPromptText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: '$text, ',
          style: Theme.of(context).textTheme.bodyMedium,
          children: [
            TextSpan(
              text: 'please sign in again',
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // Navigate to sign in screen
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppRoutes.signIn,
                    (route) => false,
                  );
                },
            ),
            const TextSpan(
              text: ' to get the latest updates.',
            ),
          ],
        ),
      ),
    );
  }
}
