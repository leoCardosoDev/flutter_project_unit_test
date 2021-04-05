import 'package:flutter/widgets.dart';
import 'package:flutter_projeto_cero/pages/onboarding/onboarding_page.dart';
import 'package:flutter_projeto_cero/routes/routes.dart';

abstract class Pages {
  static const String INITIAL = Routes.ONBOARDING;

  static final Map<String, Widget Function(BuildContext)> routes = {
    Routes.ONBOARDING: (_) => OnboardingPage(),
  };
}
