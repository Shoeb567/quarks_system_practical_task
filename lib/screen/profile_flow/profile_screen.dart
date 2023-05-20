import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quarks_system_practical_task/screen/profile_flow/personal_details_widget.dart';
import 'package:quarks_system_practical_task/utils/app_images.dart';
import 'package:quarks_system_practical_task/utils/app_textstyles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(AppImages.logOut),
              ),
              profileView(),
              const SizedBox(height: 41),
              headingTitle("About me"),
              const SizedBox(height: 22),
              personalDetailsWidget(),
              const SizedBox(height: 14),
              headingTitle("Hobbies"),
              const SizedBox(height: 5),
              hobbiesAndPersonalSkillsWidget(
                  title: "Create Unique Mobile Applications"),
              hobbiesAndPersonalSkillsWidget(title: "Travelling"),
              hobbiesAndPersonalSkillsWidget(title: "Explore New Things"),
              const SizedBox(height: 14),
              headingTitle("Personal Skills"),
              const SizedBox(height: 5),
              hobbiesAndPersonalSkillsWidget(title: "Creativity"),
              hobbiesAndPersonalSkillsWidget(title: "Project Management"),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: headingTitle("Contact Me"),
              ),
              const SizedBox(height: 10),
              Text(
                "Punjala's Block Near Post Office Raikhad Darwaja,Ahmedabad-380001",
                textAlign: TextAlign.center,
                style: AppTextStyles.userDetailsTextStyle,
              ),
              const SizedBox(height: 26),
            ],
          ),
        ),
      ),
    );
  }
}
