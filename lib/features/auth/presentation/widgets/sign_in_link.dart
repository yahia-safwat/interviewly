import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';

class SignInLink extends StatelessWidget {
  const SignInLink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => _navigateToSignInScreen(context),
        child: RichText(
          text: TextSpan(
            text: 'Already have an account? ',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.deepPurple,
                ),
            children: [
              TextSpan(
                text: 'Sign In',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToSignInScreen(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.signIn, (route) => false);
  }
}
