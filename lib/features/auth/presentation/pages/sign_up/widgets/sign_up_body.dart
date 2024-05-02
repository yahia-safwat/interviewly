import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../common/app/presentation/widgets/snackbars/error_snackbar.dart';
import '../../../../../../core/routes/app_routes.dart';
import '../../../../../category/presentation/blocs/category/category_bloc.dart';
import '../../../blocs/cache_user/cache_user_bloc.dart';
import '../../../blocs/sign_up_bloc/sign_up_bloc.dart';
import '../../../blocs/user_bloc/user_bloc.dart';
import '../../../blocs/verify_email/verify_email_bloc.dart';
import '../../../widgets/sign_in_link.dart';
import '../../email_sent/email_sent_page.dart';
import 'sign_up_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) => _handleState(context, state),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SignUpForm(),
              const SizedBox(height: 20),
              const SignInLink(),
            ],
          ),
        ),
      ),
    );
  }

  void _handleState(BuildContext context, SignUpState state) {
    if (state is SignUpSuccess) {
      // Set the user in the UserBloc
      context.read<UserBloc>().add(SetUser(state.user));

      // Cache the user to local storage
      context
          .read<CacheUserBloc>()
          .add(CacheUserEvent.cacheUser(user: state.user!));

      // Fetch categories
      context.read<CategoryBloc>().add(FetchCategories(user: state.user));

      // Send Verification Email
      context
          .read<VerifyEmailBloc>()
          .add(const VerifyEmailEvent.sendVerification());

      // Navigate to the verify email screen
      _navigateToEmailSentScreen(context);
    } else if (state is SignUpError) {
      showErrorSnackbar(context, state.errorMessage);
    }
  }

  void _navigateToEmailSentScreen(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.emailSent, (route) => false,
        arguments: EmailViewType.emailVerification);
  }
}
