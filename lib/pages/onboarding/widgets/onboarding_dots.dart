import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../../../controllers/onboarding/onboarding_controller.dart';
import '../../../utils/theme_version_colors.dart';

class OnboardingDots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final OnboardingController controller =
        Provider.of<OnboardingController>(context);
    return DotsIndicator(
      dotsCount: controller.items.length,
      position: controller.currentPage,
      decorator: DotsDecorator(
        color: ThemeVersionColor.greyDarkColor,
        activeColor: ThemeVersionColor.primaryColor,
        size: Size.square(10),
        activeSize: Size(12, 12),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
