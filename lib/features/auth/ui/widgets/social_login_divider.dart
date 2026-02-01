import 'package:doc_doc/core/themes/app_colors.dart';
import 'package:doc_doc/core/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class SocialLoginDivider extends StatelessWidget {
  const SocialLoginDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(thickness: 1, color: AppColors.gray400),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'Or Log in with',
            style: AppTextStyle.font14RegularWithGray,
          ),
        ),
        const Expanded(
          child: Divider(thickness: 1, color: AppColors.gray400),
        ),
      ],
    );
  }
}
