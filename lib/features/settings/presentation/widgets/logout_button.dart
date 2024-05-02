import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/app/presentation/widgets/snackbars/error_snackbar.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../auth/presentation/blocs/sign_out_bloc/sign_out_bloc.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignOutBloc, SignOutState>(
      listener: (context, state) => _handleState(context, state),
      child: IconButton(
        onPressed: () {
          context.read<SignOutBloc>().add(SignOutPressed());
        },
        icon: const Icon(Icons.logout),
      ),
    );
  }
}

void _handleState(BuildContext context, SignOutState state) {
  if (state is SignOutSuccess) {
    _navigateToSignInScreen(context);
  } else if (state is SignOutError) {
    showErrorSnackbar(context, state.errorMessage);
  }
}

void _navigateToSignInScreen(BuildContext context) {
  Navigator.pushNamedAndRemoveUntil(
      context, AppRoutes.signIn, (route) => false);
}
