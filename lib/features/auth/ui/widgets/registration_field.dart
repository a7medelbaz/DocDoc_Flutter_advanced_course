import 'package:doc_doc/core/Widgets/app_text_form_field.dart';
import 'package:doc_doc/core/themes/app_text_style.dart';
import 'package:doc_doc/features/auth/ui/widgets/remember_me_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegistrationField extends StatelessWidget {
  const RegistrationField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextFormField(
          hintText: 'Enter Your Email',
          labelText: 'Email',
        ),
        SizedBox(height: 16.h),
        AppTextFormField(
          hintText: 'Enter Your Password',
          labelText: 'Password',
        ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RememberMeBox(),
            GestureDetector(
              child: Text(
                'Forgot Password?',
                style: AppTextStyle.font12RegularWithMainBlue,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
