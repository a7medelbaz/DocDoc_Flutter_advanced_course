import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RememberMeBox extends StatefulWidget {
  const RememberMeBox({super.key});

  @override
  State<RememberMeBox> createState() => _RememberMeBoxState();
}

class _RememberMeBoxState extends State<RememberMeBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          side: const BorderSide(
            color: AppColors.gray400,
            width: 2.0,
          ),
          activeColor: AppColors.mainBlue,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        SizedBox(width: 1.5.w),
        Text(
          'Remember me',
          style: AppTextStyle.font12RegularWithGray400,
        ),
      ],
    );
  }
}
