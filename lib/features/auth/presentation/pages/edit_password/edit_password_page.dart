import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/app/presentation/widgets/snackbars/error_snackbar.dart';
import '../../../../../common/app/presentation/widgets/snackbars/success_snackbar.dart';
import '../../blocs/edit_password_bloc/edit_password_bloc.dart';
import 'widgets/edit_password_body.dart';

class EditPasswordPage extends StatelessWidget {
  const EditPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditPasswordBloc, EditPasswordState>(
      listener: _handleEditPasswordState,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Change Password'),
        ),
        body: const EditPasswordBody(),
      ),
    );
  }
}

void _handleEditPasswordState(BuildContext context, EditPasswordState state) {
  state.whenOrNull(
    initial: () => null,
    editing: () => null,
    editSuccess: () {
      // show success snackbar
      showSuccessSnackbar(context, 'password changed successfully');

      // navigate back to account page
      Navigator.pop(context);
    },
    editError: (errorMessage) {
      // show error snackbar
      showErrorSnackbar(context, errorMessage);
    },
  );
}
