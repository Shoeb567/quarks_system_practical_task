import 'package:flutter/material.dart';
import 'package:quarks_system_practical_task/utils/app_images.dart';

import '../../utils/common_widgets.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

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
                const Spacer(),
                Image.asset(AppImages.mask_group_2, fit: BoxFit.contain),
              ],
            ),
          ),
          const SizedBox(height: 53),
          introMessageWidget(
            title1: "Learn from expert \ncoaches & mentors",
            title2: "Learn from our expert mentors, coaches & industry experts who are passionate about coaching their students & mentees",
          )
        ],
      ),
    );

  }
}
