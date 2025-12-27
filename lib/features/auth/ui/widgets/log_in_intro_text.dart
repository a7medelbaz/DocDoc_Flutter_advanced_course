import 'package:doc_doc/core/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class LogInIntroText extends StatelessWidget {
  const LogInIntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome Back',
          style: AppTextStyle.font24BoldWithMainBlue,
          textAlign: TextAlign.start,
        ),
        Text(
          "We're excited to have you back, can't wait to see what you've been up to since you last \nlogged in.",
          style: AppTextStyle.font14RegularWithGrey,
        ),
      ],
    );
  }
}
