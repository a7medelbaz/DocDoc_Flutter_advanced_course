import 'package:doc_doc/core/themes/app_colors.dart';
import 'package:doc_doc/core/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final String labelText;

  const AppTextFormField({
    super.key,
    required this.hintText,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        // Label and Hint
        labelText: labelText,
        labelStyle: AppTextStyle.font14MediumWithHintColor,
        hintText: hintText,
        hintStyle: AppTextStyle.font14MediumWithHintColor,

        // Padding (17 top/bottom, 20 left/right)
        contentPadding: EdgeInsets.symmetric(
          vertical: 17.w,
          horizontal: 20.h,
        ),

        // Border and Radius
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: AppColors.textFieldBorderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.blue, width: 1),
        ),
      ),
    );
  }
}
