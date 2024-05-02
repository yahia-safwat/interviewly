import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/app/presentation/widgets/snackbars/success_snackbar.dart';
import '../../../../../common/app/presentation/widgets/dialogs.dart/error_dialog.dart';
import '../../blocs/edit_user/edit_user_bloc.dart';
import '../../blocs/user_bloc/user_bloc.dart';
import 'widgets/edit_profile_body.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditUserBloc, EditUserState>(
      listener: _handleEditUserState,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit Profile'),
        ),
        body: const EditProfileBody(),
      ),
    );
  }
}

void _handleEditUserState(BuildContext context, EditUserState state) {
  state.when(
    initial: () => null,
    editing: () => null,
    editSuccess: (user) {
      // show success snackbar
      showSuccessSnackbar(context, 'Successfully edited account');

      // upadate user details in UserBloc
      context.read<UserBloc>().add(UpdateUser(user));
    },
    editError: (errorMessage) {
      // show error dialog
      _showErrorDialog(context, errorMessage);
    },
  );
}

void _showErrorDialog(BuildContext context, String errorMessage) {
  showErrorDialog(
    context,
    title: 'Error Updating Profile',
    message: errorMessage,
  );
}
