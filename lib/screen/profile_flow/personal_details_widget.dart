import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

Widget personalDetailsWidget() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Text("1. Month Experience"),
      SizedBox(height: 10),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout."),
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
        Text(title!),
      ],
    ),
  );
}

Widget profileView() {
  return Center(
    child: Column(
      children: const [
        SizedBox(height: 50),
        SizedBox(
          height: 150,
          width: 150,
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile_picture.jpg'),
          ),
        ),
        SizedBox(height: 25),
        Text("Shaikh Shoeb"),
        SizedBox(height: 3),
        Text("shoeb5823@gmail.com"),
      ],
    ),
  );
}
