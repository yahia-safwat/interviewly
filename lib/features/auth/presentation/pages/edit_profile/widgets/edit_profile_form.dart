import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/utils/form_validator.dart';
import '../../../blocs/edit_user/edit_user_bloc.dart';
import '../../../blocs/user_bloc/user_bloc.dart';
import '../../../widgets/custom_btn.dart';
import '../../../widgets/custom_text_form_field.dart';

class EditProfileForm extends StatelessWidget {
  EditProfileForm({super.key});

  // text controllers for form fields
  final TextEditingController displayNameController = TextEditingController();
  final TextEditingController jobTitleController = TextEditingController();

  // form key for account page form
  final accountPageFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final user = context.read<UserBloc>().user;

    // Set initial values to text controllers
    displayNameController.text = user?.displayName ?? '';
    jobTitleController.text = user?.jobTitle ?? '';

    return Form(
      key: accountPageFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            labelText: 'Display Name',
            hintText: 'Enter your display name',
            controller: displayNameController,
            validator: FormValidator.displayNameValidator,
          ),
          const SizedBox(height: 20),
          CustomTextField(
            labelText: 'Job Title',
            hintText: 'Enter your job title',
            controller: jobTitleController,
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
    // validate account page form fields
    if (!accountPageFormKey.currentState!.validate()) {
      return;
    } else {
      // create updated account details
      final displayName = displayNameController.text;
      final jobTitle = jobTitleController.text;

      // Dispatch UpdateAccountPressed event to UpdateAccountBloc
      context.read<EditUserBloc>().add(
            EditUserEvent.editUser(
              user: context.read<UserBloc>().user!.copyWithEntity(
                    displayName: displayName,
                    jobTitle: jobTitle,
                  ),
            ),
          );
    }
  }
}
