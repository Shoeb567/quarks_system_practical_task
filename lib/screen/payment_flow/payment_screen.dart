import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quarks_system_practical_task/screen/profile_flow/profile_screen.dart';
import 'package:quarks_system_practical_task/utils/app_colors.dart';

import '../../utils/app_images.dart';
import '../../utils/common_widgets.dart';
import 'package:flutter_dash/flutter_dash.dart';

import 'dashed_line_painter.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Stack(
                children: [
                  // Padding(
                  //   padding: EdgeInsets.only(left: 20,bottom: 30),
                  //   child: Container(height: 30,width: 30,color: Colors.red,),
                  // ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.borderColor),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        commonCourseWidget(
                          svgIcon: SvgPicture.asset(AppImages.checkbox),
                          title: "Premium Plan",
                          courseLength: "27 courses",
                        ),
                        const SizedBox(height: 14),
                        DashedLine(
                          height: 1.0,
                          color: AppColors.borderColor.withOpacity(0.2),
                          dashWidth: 8.0,
                          dashSpacing: 5.0,
                        ),
                        const SizedBox(height: 15),
                        commonCoursePriceWidget(
                          title: "Subtotal",
                          totalAmountValue: "₹ 1,999.00",
                        ),
                        const SizedBox(height: 10),
                        commonCoursePriceWidget(
                          title: "Tax 18.0%",
                          totalAmountValue: "₹ 999.00",
                        ),
                        const SizedBox(height: 15),
                        DashedLine(
                          height: 1.0,
                          color: AppColors.borderColor.withOpacity(0.2),
                          dashWidth: 8.0,
                          dashSpacing: 5.0,
                        ),
                        const SizedBox(height: 15),
                        commonCoursePriceWidget(
                          title: "Total Payment",
                          totalAmountValue: "₹ 2,998.00",
                        ),
                        const SizedBox(height: 18),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: AppColors.borderColor.withOpacity(0.08)),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: commonCourseWidget(
                  title: "Dr. Adhiya Courses",
                  courseLength: "17 courses",
                ),
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: AppColors.borderColor.withOpacity(0.08)),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: commonCourseWidget(
                  title: "YSR Courses",
                  courseLength: "8 courses",
                ),
              ),
              const SizedBox(height: 30),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: commonButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileScreen(),
                        ));
                  },
                  backgroundColor: Colors.blue,
                  title: "Proceed",
                ),
              ),
              const SizedBox(height: 15),
              const Text("Start 15 day free trial"),
              const SizedBox(height: 2),
              Container(height: 1, width: 136, color: AppColors.darkGreyColor),
              const SizedBox(height: 22),
            ],
          ),
        ),
      ),
    );
  }
}
