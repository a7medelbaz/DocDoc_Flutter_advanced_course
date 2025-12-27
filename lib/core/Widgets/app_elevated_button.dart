import 'package:doc_doc/core/themes/app_colors.dart';
import 'package:doc_doc/core/themes/app_text_style.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const AppElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.mainBlue,
        minimumSize: const Size(double.infinity, 52),
        // Setting the rounded edges
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16.0,
          ), // Adjust the radius as needed
        ),
        // English comments: You can also set a fixed size or padding here
        // padding: const EdgeInsets.symmetric(
        //   vertical: 14,
        //   horizontal: 24,
        // ),
      ),
      onPressed: onPressed,
      child: Text(text, style: AppTextStyle.font16SemiBoldWithWhite),
    );
  }
}
