import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingDotsIndicator extends StatelessWidget {
  final int pageIndex;
  const OnBoardingDotsIndicator({super.key, required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: pageIndex,
      decorator: DotsDecorator(
        color: Colors.black.withOpacity(0.2),
        activeColor: Colors.blue,
        size: const Size.square(9.0),
        activeSize: const Size(36.0, 9.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
