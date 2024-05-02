import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection_container.dart' as di;
import '../blocs/onboarding/onboarding_bloc.dart';
import '../widgets/onboarding_page_body.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.sl<OnboardingBloc>(),
      child: Scaffold(
        body: OnboardingPageBody(),
      ),
    );
  }
}
