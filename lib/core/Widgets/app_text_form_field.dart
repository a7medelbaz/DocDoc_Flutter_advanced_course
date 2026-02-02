import '../themes/app_colors.dart';
import '../themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final String labelText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;

  const AppTextFormField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.controller,
    required this.validator,
    this.isObscureText,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.suffixIcon,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        // Label and Hint
        labelText: labelText,
        labelStyle: AppTextStyle.font14MediumWithHintColor,
        hintText: hintText,
        hintStyle: AppTextStyle.font14MediumWithHintColor,
        suffixIcon: suffixIcon,
        fillColor: backgroundColor ?? AppColors.moreLightGray,
        filled: true,
        // fillColor: backgroundColor ?? ColorsManager.moreLightGray,

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
        // enabledBorder
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: AppColors.textFieldBorderColor,
          ),
        ),
        // focusedBorder
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.blue, width: 1),
        ),
        // errorBorder
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16.0),
        ),
        // focusedErrorBorder
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      // obscureText
      obscureText: isObscureText ?? false,
      style: AppTextStyle.font14MediumDarkBlue,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
