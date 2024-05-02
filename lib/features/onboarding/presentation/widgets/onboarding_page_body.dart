import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/routes/app_routes.dart';
import '../blocs/onboarding/onboarding_bloc.dart';
import 'bottom_sheet.dart';
import 'dots_indicator.dart';
import 'page_view.dart';

class OnboardingPageBody extends StatelessWidget {
  // initialize PageController with initial page
  final PageController _pageController = PageController(initialPage: 0);

  OnboardingPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            _buildPageView(context),
            _buildSkipButton(context),
            _buildDotsIndicator(context),
            _buildBottomSheet(context),
          ],
        );
      },
    );
  }

  Widget _buildPageView(BuildContext context) {
    // Get instance of onboarding bloc
    final onboardingBloc = context.read<OnboardingBloc>();

    return OnBoardingPageView(
      controller: _pageController,
      onPageChanged: (int page) {
        // Add increase page event
        onboardingBloc.add(OnboardingEvent.increasePage(page));
      },
    );
  }

  Widget _buildSkipButton(BuildContext context) {
    // Get instance of onboarding bloc
    final onboardingBloc = context.read<OnboardingBloc>();
    return Positioned(
      top: 40,
      right: 20,
      child: TextButton(
        onPressed: () {
          // Add onboarding skip event
          onboardingBloc
              .add(const OnboardingEvent.skipOnboarding(isFirstTime: false));

          // Navigate to login screen
          _navigateToLoginPage(context);
        },
        child: const Text('Skip', style: TextStyle(color: Colors.black)),
      ),
    );
  }

  Widget _buildDotsIndicator(BuildContext context) {
    // Get instance of onboarding bloc
    final onboardingBloc = context.read<OnboardingBloc>();

    return Positioned(
      bottom: 110,
      child: OnBoardingDotsIndicator(pageIndex: onboardingBloc.currentPage),
    );
  }

  Widget _buildBottomSheet(BuildContext context) {
    // Get instance of onboarding bloc
    final onboardingBloc = context.read<OnboardingBloc>();

    return Positioned(
      bottom: 35,
      child: OnboardingBottomSheet(
        pageIndex: onboardingBloc.currentPage,
        onNextPressed: () {
          // Get next page value
          final nextPage = onboardingBloc.currentPage + 1;

          // Animate to next page
          _pageController.animateToPage(
            nextPage,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );

          // Add increase page event
          onboardingBloc.add(OnboardingEvent.increasePage(nextPage));
        },
        onGetStartedPressed: () {
          // Add onboarding complete event
          onboardingBloc.add(
              const OnboardingEvent.completeOnboarding(isFirstTime: false));

          // Navigate to login screen
          _navigateToLoginPage(context);
        },
      ),
    );
  }

  void _navigateToLoginPage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signIn);
  }
}
