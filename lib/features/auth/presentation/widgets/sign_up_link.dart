import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';

class SignUpLink extends StatelessWidget {
  const SignUpLink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () => _navigateToSignUpScreen(context),
        child: RichText(
          text: TextSpan(
            text: 'Don\'t have an account? ',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.deepPurple,
                ),
            children: [
              TextSpan(
                text: 'Sign Up',
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

  void _navigateToSignUpScreen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUp);
  }
}
