import 'package:doc_doc/core/themes/app_colors.dart';
import 'package:doc_doc/core/themes/app_font_weight.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static const TextStyle font32BoldWithMainBlue = TextStyle(
    fontSize: 32,
    fontWeight: AppFontWeight.bold,
    color: AppColors.mainBlue,
  );
  static const TextStyle font10RegularWithGrey = TextStyle(
    fontSize: 10,
    fontWeight: AppFontWeight.regular,
    color: AppColors.grey,
  );
  static const TextStyle font16SemiBoldWithWhite = TextStyle(
    fontSize: 16,
    fontWeight: AppFontWeight.semiBold,
    color: AppColors.mainWhite,
  );
}
