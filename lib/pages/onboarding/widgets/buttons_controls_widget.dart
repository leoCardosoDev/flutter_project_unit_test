import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projeto_cero/controllers/onboarding/onboarding_controller.dart';
import 'package:provider/provider.dart';

import '../../../utils/theme_version_colors.dart';
import '../widgets/onboarding_dots.dart';

class OnboardingControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OnboardingDots(),
          Consumer<OnboardingController>(builder: (_, controller, __) {
            final double page = controller.currentPage;
            bool isEndPage = page % 1 == 0 && page == 2.0;
            return CupertinoButton(
              onPressed: () {},
              color: ThemeVersionColor.primaryColor,
              child: Text(isEndPage ? "Get Started" : "Next"),
            );
          }),
        ],
      ),
    );
  }
}
