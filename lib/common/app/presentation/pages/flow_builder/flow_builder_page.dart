import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interviewly/features/auth/presentation/pages/pages.dart';

import '../../../../../features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import '../../../../../features/auth/presentation/blocs/user_bloc/user_bloc.dart';
import '../../../../../features/category/presentation/blocs/category/category_bloc.dart';
import '../../../../../features/home/presentation/pages/home_page.dart';
import '../../../../../features/onboarding/presentation/pages/onboarding_page.dart';
import '../../../../../features/splash/presentation/pages/splash_page.dart';
import '../../blocs/app/app_bloc.dart';
import '../loading/loading_page.dart';

// Widget for handling UI flow based on authentication state.
class FlowBuilderPage extends StatelessWidget {
  const FlowBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Get isFirstTime from prefs data
    final bool isFirstTime = context.read<AppBloc>().isFirstTime;

    return BlocConsumer<AuthBloc, AuthState>(
      listener: _handleAuthState,
      builder: (context, AuthState state) {
        // If [isFirstTime] is true, navigate to onboarding screen
        if (isFirstTime) return const OnboardingPage();

        // Otherwise, build the appropriate page based on auth state
        return switch (state) {
          AuthInitial() => const SplashPage(),
          AuthLoading() => const LoadingPage(),
          AuthError() => const AuthErrorPage(),
          Authenticated() => const HomePage(),
          Unauthenticated() => const SignInPage(),
        };
      },
    );
  }

  // Handle Auth state changes
  void _handleAuthState(BuildContext context, AuthState state) {
    if (state is Authenticated) {
      // Set the user in the UserBloc
      context.read<UserBloc>().add(SetUser(state.user));

      // Fetch categories
      context.read<CategoryBloc>().add(FetchCategories(user: state.user));
    }
  }
}
