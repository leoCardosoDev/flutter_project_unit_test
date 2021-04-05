import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/theme_version_colors.dart';

class OnboardingControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 10,
            color: Colors.amber,
          ),
          CupertinoButton(
            onPressed: () {},
            color: ThemeVersionColor.primaryColor,
            child: Text("Next"),
          ),
        ],
      ),
    );
  }
}
