import '../../../../core/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class RegistrationIntroText extends StatelessWidget {
  final String introTitle;
  final String introMassage;
  const RegistrationIntroText({
    super.key,
    required this.introTitle,
    required this.introMassage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          introTitle,
          style: AppTextStyle.font24BoldWithMainBlue,
          textAlign: TextAlign.start,
        ),
        Text(introMassage, style: AppTextStyle.font14RegularWithGray),
      ],
    );
  }
}
