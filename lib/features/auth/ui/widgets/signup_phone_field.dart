import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_style.dart';

class SignupPhoneField extends StatelessWidget {
  final TextStyle? inputTextStyle;
  final Color? backgroundColor;
  final TextEditingController? controller;

  const SignupPhoneField({
    super.key,
    this.controller,
    this.inputTextStyle,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      dropdownIconPosition: IconPosition.trailing, // أو trailing
      pickerDialogStyle: PickerDialogStyle(
        searchFieldCursorColor: AppColors.mainBlue,
        countryNameStyle: AppTextStyle.font13RegularDarkBlue,
      ),
      decoration: InputDecoration(
        labelText: 'Phone Number',
        hintText: 'Enter your phone number',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(
            color: AppColors.moreLightGray,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(
            color: AppColors.moreLightGray,
          ),
        ),
      ),
      initialCountryCode: 'EG',
      onChanged: (phone) {
        debugPrint(phone.completeNumber);
      },
    // countries: ['EG', 'SA', 'US', 'GB', 'FR'],5
    );
  }
}
