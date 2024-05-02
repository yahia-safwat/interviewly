import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/form_validator.dart';
import '../../../blocs/edit_password_bloc/edit_password_bloc.dart';
import '../../../blocs/user_bloc/user_bloc.dart';
import '../../../widgets/custom_btn.dart';
import '../../../widgets/custom_text_form_field.dart';

class EditPasswordForm extends StatelessWidget {
  EditPasswordForm({super.key});

  // text controllers for form fields
  final TextEditingController currentPasswordController =
      TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmNewPasswordController =
      TextEditingController();

  // form key for account page form
  final editPasswordPageFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: editPasswordPageFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            labelText: 'Current Password',
            hintText: 'Enter your current password',
            obscureText: true,
            controller: currentPasswordController,
            validator: FormValidator.passwordValidator,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            labelText: 'New Password',
            hintText: 'Enter your new password',
            obscureText: true,
            controller: newPasswordController,
            validator: FormValidator.passwordValidator,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            labelText: 'Confirm Password',
            hintText: 'Confirm your password',
            obscureText: true,
            controller: confirmNewPasswordController,
            validator: FormValidator.passwordValidator,
          ),
          const SizedBox(height: 20),
          CustomButton(
            width: 200, // Adjust the width as needed
            borderRadius: 10, // Adjust the border radius as needed
            onPressed: () => _onUpdateAccountPressed(context),
            text: 'Update Account',
          ),
        ],
      ),
    );
  }

  void _onUpdateAccountPressed(BuildContext context) {
    // Validate  edit password page form fields
    if (!editPasswordPageFormKey.currentState!.validate()) {
      return;
    } else {
      // Get the values from the text fields
      final currentPassword = currentPasswordController.text;
      final newPassword = newPasswordController.text;
      final confirmNewPassword = confirmNewPasswordController.text;

      // Check if new password matches confirm password
      if (_passwordsMatch(newPassword, confirmNewPassword)) {
        // Dispatch UpdateAccountPressed event to PasswordBloc
        context.read<EditPasswordBloc>().add(
              EditPasswordEvent.changePassword(
                context.read<UserBloc>().user!,
                currentPassword,
                newPassword,
              ),
            );
      } else {
        // Show error message if passwords do not match
        _showPasswordMismatchSnackbar(context);
      }
    }
  }

  bool _passwordsMatch(String newPassword, String confirmNewPassword) {
    return newPassword == confirmNewPassword;
  }

  void _showPasswordMismatchSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('New password and confirm password do not match'),
      ),
    );
  }
}
