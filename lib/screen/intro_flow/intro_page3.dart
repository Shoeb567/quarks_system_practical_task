import 'package:flutter/material.dart';

import '../../utils/app_images.dart';
import '../../utils/common_widgets.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 10,
            child: Column(
              children: [
                Spacer(),
                Image.asset(AppImages.mask_group_3, fit: BoxFit.contain),
              ],
            ),
          ),
          const SizedBox(height: 53),
          introMessageWidget(
            title1: "Become an expert \nyourself!",
            title2:
                "Uplift your skills, stay sharp & get winning edge. Get inside out to discoer your path. Boost your journey",
          )
        ],
      ),
    );
  }
}
