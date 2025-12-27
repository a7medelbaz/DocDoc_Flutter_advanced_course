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
  static TextStyle font10RegularWithGrey = TextStyle(
    fontSize: 10.sp,
    fontWeight: AppFontWeight.regular,
    color: AppColors.grey,
  );
  static TextStyle font16SemiBoldWithWhite = TextStyle(
    fontSize: 16.sp,
    fontWeight: AppFontWeight.semiBold,
    color: AppColors.mainWhite,
  );
}
