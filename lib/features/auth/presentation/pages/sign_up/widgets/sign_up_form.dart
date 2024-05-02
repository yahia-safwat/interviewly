import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/form_validator.dart';
import '../../../../domain/entities/user_entity.dart';
import '../../../blocs/sign_up_bloc/sign_up_bloc.dart';
import '../../../widgets/custom_btn.dart';
import '../../../widgets/custom_checkbox.dart';
import '../../../widgets/custom_text_form_field.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({super.key});

  // text controllers for form fields
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController displayNameController = TextEditingController();
  final TextEditingController jobTitleController = TextEditingController();

  // booleans needed fo sign up
  final ValueNotifier<bool> isEmailVerified = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isStudent = ValueNotifier<bool>(false);

  // form key for sign up form
  final signUpFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: signUpFormKey,
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
          CustomTextField(
            labelText: 'Display Name',
            hintText: 'Enter your display name',
            controller: displayNameController,
            validator: FormValidator.displayNameValidator,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            labelText: 'Job Title (Optional)',
            hintText: 'Enter your job title',
            controller: jobTitleController,
          ),
          const SizedBox(height: 20),
          CustomCheckbox(
            title: 'I am a student',
            valueNotifier: isStudent,
          ),
          const SizedBox(height: 20),
          CustomButton(
            width: 200, // Adjust the width as needed
            borderRadius: 10, // Adjust the border radius as needed
            onPressed: () => _onSignUpPressed(context),
            text: 'Sign Up',
          ),
        ],
      ),
    );
  }

  void _onSignUpPressed(BuildContext context) {
    // validate sign up form fields
    if (!signUpFormKey.currentState!.validate()) {
      return;
    } else {
      // create user password & user entity
      final password = passwordController.text;
      final UserEntity user = UserEntity(
        uid: '',
        email: emailController.text,
        displayName: displayNameController.text,
        authProvider: 'Email&Password',
        jobTitle: jobTitleController.text,
        isEmailVerified: isEmailVerified.value,
        isStudent: isStudent.value,
        categories: [],
        questions: [],
      );

      // Dispatch SignUpPressed event to SignUpBloc
      BlocProvider.of<SignUpBloc>(context).add(
        SignUpPressed(password: password, user: user),
      );
    }
  }
}
