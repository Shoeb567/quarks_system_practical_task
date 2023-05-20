import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quarks_system_practical_task/utils/app_textstyles.dart';

import '../../utils/app_colors.dart';

Widget personalDetailsWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("1. Month Experience",
          style: AppTextStyles.monthExperienceTextStyle),
      const SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
          style: AppTextStyles.userDetailsTextStyle,
        ),
      )
    ],
  );
}

Widget hobbiesAndPersonalSkillsWidget({String? title}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      children: [
        Container(
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.borderColor),
          width: 8 / 2,
          height: 8 / 2,
        ),
        const SizedBox(width: 10),
        Text(title!, style: AppTextStyles.userDetailsTextStyle),
      ],
    ),
  );
}

Widget profileView() {
  return Center(
    child: Column(
      children: [
        const SizedBox(height: 50),
        const SizedBox(
          height: 150,
          width: 150,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile_picture.jpg'),
          ),
        ),
        const SizedBox(height: 25),
        Text("Shaikh Shoeb", style: AppTextStyles.introTitleTextStyle),
        const SizedBox(height: 3),
        Text("shoeb5823@gmail.com", style: AppTextStyles.emailTextStyle),
      ],
    ),
  );
}
Widget headingTitle(String title){
  return Text(title, style: AppTextStyles.headingTitleTextStyle);
}