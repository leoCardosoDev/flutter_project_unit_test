import 'package:flutter/foundation.dart' show ChangeNotifier;

import '../../data/models/onboardingitem.dart';

class OnboardingController extends ChangeNotifier {
  final List<OnboardingItem> items = [
    OnboardingItem(
      image: "assets/svg/pages/onboarding/slider_1.svg",
      title: "Morbi porta metus vel.",
      description:
          "Aliquam risus diam, blandit eget neque sit amet, faucibus elementum lorem.",
    ),
    OnboardingItem(
      image: "assets/svg/pages/onboarding/slider_2.svg",
      title: "Curabitur mi lacus, aliquam et.",
      description:
          "Morbi porta metus vel nibh suscipit viverra faucibus elementum lorem.",
    ),
    OnboardingItem(
      image: "assets/svg/pages/onboarding/slider_3.svg",
      title: "Cras non dapibus tellus.",
      description:
          "Donec a ex laoreet augue consectetur dignissim mauris, sollicitudin et ligula eu.",
    ),
  ];
}
