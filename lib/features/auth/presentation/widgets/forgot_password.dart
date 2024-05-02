import 'package:flutter/material.dart';

import '../../../../core/routes/app_routes.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          // Navigate to the forgot password screen
          Navigator.pushNamed(context, AppRoutes.forgetPassword);
        },
        child: const Text(
          'Forgot Password?',
        ),
      ),
    );
  }
}
