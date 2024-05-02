// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  final PageController controller;
  final Function(int)? onPageChanged;
  const OnBoardingPageView({
    super.key,
    required this.controller,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      onPageChanged: onPageChanged,
      children: [
        _buildPageContent(
          context: context,
          image: 'assets/images/onboarding/page1.png',
          title: 'Boost Productivity',
          description:
              'Elevate your productivity to new heights and grow with us',
        ),
        _buildPageContent(
          context: context,
          image: 'assets/images/onboarding/page2.png',
          title: 'Work Seamlessly',
          description: 'Get your work done seamlessly without interruption',
        ),
        _buildPageContent(
          context: context,
          image: 'assets/images/onboarding/page3.png',
          title: 'Achieve Higher Goals',
          description:
              'By boosting your producivity we help you achieve higher goals',
        ),
      ],
    );
  }

  _buildPageContent({
    required BuildContext context,
    required String image,
    required String title,
    required String description,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image),
        const SizedBox(height: 40),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        const SizedBox(height: 120),
      ],
    );
  }
}
