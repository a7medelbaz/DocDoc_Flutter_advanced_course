import '../../../../core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class PolicyAndSignUp extends StatelessWidget {
  final String registrationQuestionText;
  final String registrationOptionText;
  final VoidCallback registrationOptionNavigation;
  const PolicyAndSignUp({
    super.key,
    required this.registrationQuestionText,
    required this.registrationOptionText,
    required this.registrationOptionNavigation,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(registrationQuestionText),
        GestureDetector(
          onTap: registrationOptionNavigation,
          child: Text(
            registrationOptionText,
            style: TextStyle(
              color: AppColors.mainBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
