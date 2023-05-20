import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quarks_system_practical_task/utils/app_images.dart';

import '../../utils/common_widgets.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

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
                Image.asset(AppImages.mask_group_1, fit: BoxFit.contain),
              ],
            ),
          ),
          const SizedBox(height: 53),
          introMessageWidget(
            title1: "Get unlimited access to \n high value courses",
            title2:
                "Choose which courses will give the breakthrough you’re looking for from our extensive courses library",
          )
        ],
      ),
    );
  }
}
