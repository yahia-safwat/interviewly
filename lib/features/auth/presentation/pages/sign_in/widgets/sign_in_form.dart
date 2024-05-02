import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/form_validator.dart';
import '../../../blocs/sign_in_with_email_bloc/sign_in_with_email_bloc.dart';
import '../../../widgets/custom_btn.dart';
import '../../../widgets/custom_text_form_field.dart';

class SignInForm extends StatelessWidget {
  SignInForm({super.key});

  // text controllers for form fields
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // form key for sign in form
  final signInFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: signInFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            labelText: 'Email',
            hintText: 'Enter your email',
            controller: emailController,
            validator: FormValidator.emailValidator,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            labelText: 'Password',
            hintText: 'Enter your password',
            obscureText: true,
            controller: passwordController,
            validator: FormValidator.passwordValidator,
          ),
          const SizedBox(height: 20),
          CustomButton(
            width: 200, // Adjust the width as needed
            borderRadius: 10, // Adjust the border radius as needed
            onPressed: () => _onSignInPressed(context),
            text: 'Sign In',
          ),
        ],
      ),
    );
  }

  void _onSignInPressed(BuildContext context) {
    // validate sign in form fields
    if (!signInFormKey.currentState!.validate()) {
      return;
    } else {
      // create user email & password
      final email = emailController.text;
      final password = passwordController.text;

      // Dispatch SignInPressed event to SignInBloc
      BlocProvider.of<SignInWithEmailBloc>(context).add(
        SignInWithEmailPressed(
          email: email,
          password: password,
        ),
      );
    }
  }
}
