import 'package:flutter/material.dart';

class OnboardingBottomSheet extends StatelessWidget {
  final int pageIndex;
  final VoidCallback onNextPressed;
  final VoidCallback onGetStartedPressed;

  const OnboardingBottomSheet({
    required this.pageIndex,
    required this.onNextPressed,
    required this.onGetStartedPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: pageIndex != 2 ? _buildForwardButton() : _buildGetStartedButton(),
    );
  }

  Widget _buildForwardButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(width: 260),
        GestureDetector(
          onTap: onNextPressed,
          child: Container(
            width: 60,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(239, 137, 95, 1),
              borderRadius: BorderRadius.circular(18),
            ),
            child: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildGetStartedButton() {
    return GestureDetector(
      onTap: onGetStartedPressed,
      child: Container(
        width: 160,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(239, 137, 95, 1),
          borderRadius: BorderRadius.circular(18),
        ),
        child: const Text(
          'Get Started',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
