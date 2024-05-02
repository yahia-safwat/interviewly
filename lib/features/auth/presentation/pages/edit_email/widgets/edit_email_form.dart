import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/form_validator.dart';
import '../../../blocs/edit_email/edit_email_bloc.dart';
import '../../../blocs/user_bloc/user_bloc.dart';
import '../../../widgets/custom_btn.dart';
import '../../../widgets/custom_text_form_field.dart';

class EditEmailForm extends StatelessWidget {
  EditEmailForm({super.key});

  // text controllers for form fields
  final TextEditingController emailController = TextEditingController();

  // form key for account page form
  final emailPageFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final user = context.read<UserBloc>().user;

    // Set initial values to text controllers
    emailController.text = user?.email ?? '';

    return Form(
      key: emailPageFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            labelText: 'Email',
            hintText: 'Enter your Email',
            controller: emailController,
            validator: FormValidator.emailValidator,
          ),
          const SizedBox(height: 20),
          CustomButton(
            width: 200, // Adjust the width as needed
            borderRadius: 10, // Adjust the border radius as needed
            onPressed: () => _onUpdateAccountPressed(context),
            text: 'Update',
          ),
        ],
      ),
    );
  }

  void _onUpdateAccountPressed(BuildContext context) {
    // validate edit email page form fields
    if (!emailPageFormKey.currentState!.validate()) {
      return;
    } else {
      // create updated account details
      final newEmail = emailController.text;

      // Dispatch UpdateAccountPressed event to EditEmailBloc
      context.read<EditEmailBloc>().add(
            EditEmailEvent.editEmail(
              context.read<UserBloc>().user!,
              newEmail,
            ),
          );
    }
  }
}
