import 'package:doc_doc/core/themes/app_colors.dart';
import 'package:doc_doc/core/themes/app_font_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static TextStyle font32BoldWithMainBlue = TextStyle(
    fontSize: 32.sp,
    fontWeight: AppFontWeight.bold,
    color: AppColors.mainBlue,
  );
  static TextStyle font24BoldWithMainBlue = TextStyle(
    fontSize: 24.sp,
    fontWeight: AppFontWeight.bold,
    color: AppColors.mainBlue,
  );
  static TextStyle font10RegularWithGrey = TextStyle(
    fontSize: 10.sp,
    fontWeight: AppFontWeight.regular,
    color: AppColors.grey,
  );
  static TextStyle font12RegularWithGrey400 = TextStyle(
    fontSize: 12.sp,
    fontWeight: AppFontWeight.regular,
    color: AppColors.grey400,
  );
  static TextStyle font12RegularWithMainBlue = TextStyle(
    fontSize: 12.sp,
    fontWeight: AppFontWeight.regular,
    color: AppColors.mainBlue,
  );
  static TextStyle font14RegularWithGrey = TextStyle(
    fontSize: 14.sp,
    fontWeight: AppFontWeight.regular,
    color: AppColors.grey,
  );
  static TextStyle font14MediumWithHintColor = TextStyle(
    fontSize: 14.sp,
    fontWeight: AppFontWeight.medium,
    color: AppColors.hintColor,
  );
  static TextStyle font16SemiBoldWithWhite = TextStyle(
    fontSize: 16.sp,
    fontWeight: AppFontWeight.semiBold,
    color: AppColors.mainWhite,
  );
}
