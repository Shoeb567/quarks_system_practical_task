import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quarks_system_practical_task/screen/profile_flow/profile_screen.dart';
import 'package:quarks_system_practical_task/utils/app_colors.dart';
import 'package:quarks_system_practical_task/utils/app_textstyles.dart';
import '../../utils/app_images.dart';
import '../../utils/common_widgets.dart';

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  decoration:
                      borderDecoration(borderColor: AppColors.borderColor),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      commonCourseWidget(
                        svgIcon: SvgPicture.asset(AppImages.checkbox),
                        title: "Premium Plan",
                        courseLength: "27 courses",
                      ),
                      const SizedBox(height: 10),
                      DashedLine(
                        height: 1.0,
                        color: AppColors.borderColor.withOpacity(0.2),
                        dashWidth: 8.0,
                        dashSpacing: 5.0,
                      ),
                      const SizedBox(height: 15),
                      commonCoursePriceWidget(
                          title: "Subtotal", totalAmountValue: "₹ 1,999.00"),
                      const SizedBox(height: 10),
                      commonCoursePriceWidget(
                          title: "Tax 18.0%", totalAmountValue: "₹ 999.00"),
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
                        textColor: AppColors.darkGreyColor,
                      ),
                      const SizedBox(height: 18),
                    ],
                  ),
                ),
                mostPopularViewWidget()
              ],
            ),
            const SizedBox(height: 16),
            Container(
              decoration: borderDecoration(),
              child: commonCourseWidget(
                title: "Dr. Adhiya Courses",
                courseLength: "17 courses",
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: borderDecoration(),
              child: commonCourseWidget(
                title: "YSR Courses",
                courseLength: "8 courses",
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: commonButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ),
                  );
                },
                backgroundColor: AppColors.blueColor,
                title: "Proceed",
              ),
            ),
            const SizedBox(height: 15),
            Text("Start 15 day free trial",
                style: AppTextStyles.buttonTextStyle),
            const SizedBox(height: 2),
            Container(height: 1, width: 159, color: AppColors.darkGreyColor),
            const SizedBox(height: 22),
          ],
        ),
      ),
    );
  }
}
