import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quarks_system_practical_task/utils/app_images.dart';

import 'app_colors.dart';
import 'app_textstyles.dart';

Widget commonButton(
    {String? title,
    Color? backgroundColor,
    Color? textColor,
    Color? borderColor,
    VoidCallback? onTap}) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: borderColor ?? Colors.transparent),
      borderRadius: const BorderRadius.all(
        Radius.circular(12.0),
      ),
    ),
    child: MaterialButton(
      height: 54,
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      color: backgroundColor,
      onPressed: onTap,
      child: Text(title!,
          style: AppTextStyles.buttonTextStyle
              .copyWith(color: textColor ?? AppColors.white)),
    ),
  );
}

Widget introMessageWidget({String? title1, String? title2}) {
  return Expanded(
    flex: 10,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title1!,
            textAlign: TextAlign.center,
            style: AppTextStyles.introTitleTextStyle,
          ),
          const SizedBox(height: 16),
          Text(
            title2!,
            textAlign: TextAlign.center,
            style: AppTextStyles.introSubStyle,
          ),
        ],
      ),
    ),
  );
}

Widget commonCourseWidget(
    {Widget? svgIcon, String? title, String? courseLength}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
    child: Column(
      children: [
        Row(
          children: [
            Text(title!, style: AppTextStyles.paymentDetailsStyle),
            const SizedBox(width: 8),
            SvgPicture.asset(AppImages.lineIcon),
            const SizedBox(width: 8),
            Text(courseLength!, style: AppTextStyles.paymentDetailsStyle),
            const Spacer(),
            svgIcon ??
                Container(
                  height: 24,
                  width: 24,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.circleBgColor,
                  ),
                )
          ],
        ),
        const SizedBox(height: 18),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AppImages.book),
                    const SizedBox(width: 8),
                    Text("₹ 999 / Month",
                        style: AppTextStyles.amountDetailsStyle),
                  ],
                ),
                const SizedBox(height: 8),
                Text("Pay monthly, cancel any time",
                    style: AppTextStyles.messageTextStyle),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {},
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.buttonBorderColor),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Text("View courses",
                            style: AppTextStyles.paymentDetailsStyle),
                        const SizedBox(height: 2),
                        const Icon(Icons.arrow_forward_ios, size: 12)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget commonCoursePriceWidget(
    {String? title, String? totalAmountValue, Color? textColor}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title!,
            style: AppTextStyles.amountTitleStyle.copyWith(
                color: textColor ?? AppColors.borderColor.withOpacity(0.5))),
        Text(totalAmountValue!, style: AppTextStyles.amountDetailsStyle)
      ],
    ),
  );
}

Decoration borderDecoration({Color? borderColor}) {
  return BoxDecoration(
    border: Border.all(
        color: borderColor ?? AppColors.borderColor.withOpacity(0.08)),
    borderRadius: BorderRadius.circular(16),
  );
}

Widget mostPopularViewWidget() {
  return Positioned(
    top: 15,
    left: 25,
    child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.blueColor,
      ),
      child: Text("Most popular", style: AppTextStyles.tagTextStyle),
    ),
  );
}
