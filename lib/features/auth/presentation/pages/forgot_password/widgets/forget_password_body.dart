import 'package:flutter/material.dart';
import 'forget_password_form.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Enter your email to reset your password',
            style: TextStyle(fontSize: 18.0),
          ),
          const SizedBox(height: 20.0),
          ForgetPasswordForm(),
        ],
      ),
    );
  }
}
