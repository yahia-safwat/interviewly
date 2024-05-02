import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../common/app/presentation/widgets/snackbars/error_snackbar.dart';
import '../../../../../../core/routes/app_routes.dart';
import '../../../../../category/presentation/blocs/category/category_bloc.dart';
import '../../../blocs/cache_user/cache_user_bloc.dart';
import '../../../blocs/sign_in_with_email_bloc/sign_in_with_email_bloc.dart';
import '../../../blocs/sign_in_with_google/sign_in_with_google_bloc.dart';
import '../../../blocs/user_bloc/user_bloc.dart';
import '../../../widgets/forgot_password.dart';
import '../../../widgets/google_sign_in_btn.dart';
import '../../../widgets/sign_up_link.dart';
import 'sign_in_form.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SignInWithEmailBloc, SignInWithEmailState>(
          listener: (context, state) =>
              _handleSignInWithEmailState(context, state),
        ),
        BlocListener<SignInWithGoogleBloc, SignInWithGoogleState>(
          listener: (context, state) =>
              _handleSignInWithGoogleState(context, state),
        ),
      ],
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 56),
              SignInForm(),
              const SizedBox(height: 20),
              GoogleSignInButton(
                onPressed: () => _signInWithGoogle(context),
              ),
              const SizedBox(height: 20),
              const ForgotPassword(),
              const SignUpLink(),
            ],
          ),
        ),
      ),
    );
  }

  void _handleSignInWithEmailState(
    BuildContext context,
    SignInWithEmailState state,
  ) {
    if (state is SignInWithEmailSuccess) {
      // Set the user in the UserBloc
      context.read<UserBloc>().add(SetUser(state.user));

      // Cache the user to local storage
      context
          .read<CacheUserBloc>()
          .add(CacheUserEvent.cacheUser(user: state.user!));

      // Fetch categories
      context.read<CategoryBloc>().add(FetchCategories(user: state.user));

      // Navigate to the home screen
      _navigateToHomeScreen(context);
    } else if (state is SignInWithEmailError) {
      showErrorSnackbar(context, state.errorMessage,
          duration: const Duration(seconds: 5));
    }
  }

  void _handleSignInWithGoogleState(
    BuildContext context,
    SignInWithGoogleState state,
  ) {
    state.whenOrNull(
      success: (user) {
        // Set the user in the UserBloc
        context.read<UserBloc>().add(SetUser(user));

        // Cache the user to local storage
        context.read<CacheUserBloc>().add(CacheUserEvent.cacheUser(user: user));

        // Fetch categories
        context.read<CategoryBloc>().add(FetchCategories(user: user));

        // Navigate to the home screen
        _navigateToHomeScreen(context);
      },
      error: (errorMessage) {
        showErrorSnackbar(context, errorMessage,
            duration: const Duration(seconds: 5));
      },
    );
  }

  void _navigateToHomeScreen(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.home, (route) => false);
  }

  void _signInWithGoogle(BuildContext context) {
    // Call the sign in with Google Event
    context
        .read<SignInWithGoogleBloc>()
        .add(const SignInWithGoogleEvent.signIn());
  }
}
