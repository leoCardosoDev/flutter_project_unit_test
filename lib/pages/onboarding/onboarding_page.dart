import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controllers/onboarding/onboarding_controller.dart';
import 'widgets/widgets.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<OnboardingController>(
      create: (_) {
        final OnboardingController controller = OnboardingController();
        WidgetsBinding.instance.addPostFrameCallback((_) {
          controller.afterFirstLayout();
        });
        return controller;
      },
      builder: (context, _) => Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                OnboardingSlide(),
                OnboardingControls(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
