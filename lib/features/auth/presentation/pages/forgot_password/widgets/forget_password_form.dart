import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/form_validator.dart';
import '../../../blocs/forget_password/forget_password_bloc.dart';
import '../../../widgets/custom_btn.dart';
import '../../../widgets/custom_text_form_field.dart';

class ForgetPasswordForm extends StatelessWidget {
  ForgetPasswordForm({super.key});

  // text controllers for form fields
  final TextEditingController emailController = TextEditingController();

  // form key for sign in form
  final forgotPasswordFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: forgotPasswordFormKey,
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
          CustomButton(
            width: 200, // Adjust the width as needed
            borderRadius: 10, // Adjust the border radius as needed
            onPressed: () => _resetPassword(context),
            text: 'Reset Password',
          ),
        ],
      ),
    );
  }

  Future<void> _resetPassword(BuildContext context) async {
    // validate forgot password form in form fields
    if (!forgotPasswordFormKey.currentState!.validate()) {
      return;
    } else {
      // create user email & password
      final email = emailController.text;

      // Dispatch ForgotPassword event to ForgotPasswordBloc
      BlocProvider.of<ForgetPasswordBloc>(context).add(
        ForgetPasswordEvent.forgetPassword(email),
      );
    }
  }
}
