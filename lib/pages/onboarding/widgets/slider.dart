import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/utils.dart';
import '../../../data/models/onboardingitem.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';

class OnboardingSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final OnboardingController controller =
        Provider.of<OnboardingController>(context, listen: false);
    return Expanded(
      child: PageView(
        controller: controller.pageController,
        children: List.generate(controller.items.length, (index) {
          final OnboardingItem item = controller.items[index];
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: SvgPicture.asset(item.image)),
                Text(
                  item.title,
                  textAlign: TextAlign.center,
                  style: ThemeVersionFonts.title,
                ),
                SizedBox(height: 15),
                Text(
                  item.description,
                  textAlign: TextAlign.center,
                  style: ThemeVersionFonts.normal,
                ),
                SizedBox(height: 20),
              ],
            ),
          );
        }),
      ),
    );
  }
}
