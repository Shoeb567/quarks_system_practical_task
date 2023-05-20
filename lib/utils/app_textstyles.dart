import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quarks_system_practical_task/utils/app_colors.dart';

mixin AppTextStyles {
  static TextStyle introTitleTextStyle = GoogleFonts.nunitoSans(
    textStyle: const TextStyle(
      color: AppColors.borderColor,
      fontWeight: FontWeight.w700,
      fontSize: 24,
    ),
  );
  static TextStyle introSubStyle = GoogleFonts.nunitoSans(
    textStyle: const TextStyle(
      color: AppColors.textGreyColor,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      fontSize: 14,
    ),
  );
  static TextStyle buttonTextStyle = GoogleFonts.nunitoSans(
    textStyle: const TextStyle(
      color: AppColors.borderColor,
      fontWeight: FontWeight.w700,
      fontSize: 16,
    ),
  );
  static TextStyle paymentDetailsStyle = GoogleFonts.nunitoSans(
    textStyle: const TextStyle(
      color: AppColors.borderColor,
      fontWeight: FontWeight.w700,
      fontSize: 12,
    ),
  );

  static TextStyle amountDetailsStyle = GoogleFonts.nunitoSans(
    textStyle: const TextStyle(
      color: AppColors.borderColor,
      fontWeight: FontWeight.w800,
      fontSize: 16,
    ),
  );
  static TextStyle messageTextStyle = GoogleFonts.nunitoSans(
    textStyle: const TextStyle(
      color: AppColors.messageTextColor,
      fontWeight: FontWeight.w600,
      fontSize: 12,
    ),
  );

  static TextStyle tagTextStyle = GoogleFonts.nunitoSans(
    textStyle: const TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w700,
      fontSize: 10,
    ),
  );

  static TextStyle amountTitleStyle = GoogleFonts.nunitoSans(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
    ),
  );

  static TextStyle emailTextStyle = GoogleFonts.nunitoSans(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w600,
      color: AppColors.textGreyColor,
      fontSize: 13,
    ),
  );

  static TextStyle headingTitleTextStyle = GoogleFonts.nunitoSans(
    textStyle: const TextStyle(
      color: AppColors.borderColor,
      fontWeight: FontWeight.w700,
      fontSize: 25,
    ),
  );


  static TextStyle userDetailsTextStyle = GoogleFonts.nunitoSans(
    textStyle: const TextStyle(
      color: AppColors.userDetailsTextColor,
      fontWeight: FontWeight.w400,
      fontSize: 13,
    ),
  );

  static TextStyle monthExperienceTextStyle = GoogleFonts.nunitoSans(
    textStyle: const TextStyle(
      color: AppColors.monthExperienceTextColor,
      fontWeight: FontWeight.w700,
      fontSize: 19,
    ),
  );
}
