import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quarks_system_practical_task/screen/profile_flow/personal_details_widget.dart';
import 'package:quarks_system_practical_task/utils/app_images.dart';

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
              const Text("About me"),
              const SizedBox(height: 22),
              personalDetailsWidget(),
              const SizedBox(height: 14),
              const Text("Hobbies"),
              const SizedBox(height: 5),
              hobbiesAndPersonalSkillsWidget(title: "Codding"),
              hobbiesAndPersonalSkillsWidget(title: "Travelling"),
              hobbiesAndPersonalSkillsWidget(title: ""),
              const SizedBox(height: 14),
              const Text("Personal Skills"),
              const SizedBox(height: 5),
              hobbiesAndPersonalSkillsWidget(title: "Creativity"),
              hobbiesAndPersonalSkillsWidget(title: "Project Management"),
              const Spacer(),
              const Align(
                alignment: Alignment.center,
                child: Text("Contact Me"),
              ),
              const SizedBox(height: 10),
              const Text(
                "Punjala's Block Near Post Office Raikhad Darwaja,Ahmedabad-380001",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 26),
            ],
          ),
        ),
      ),
    );
  }
}
