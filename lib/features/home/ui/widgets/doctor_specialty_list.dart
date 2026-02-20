import 'package:doc_doc/core/helper/spacing.dart';
import 'package:doc_doc/core/themes/app_colors.dart';
import 'package:doc_doc/core/themes/app_text_style.dart';
import 'package:doc_doc/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialtyList extends StatelessWidget {
  const DoctorSpecialtyList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildSpecialtyItem(index);
        },
      ),
    );
  }

  Widget _buildSpecialtyItem(int index) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: index == 0 ? 0 : 24.w,
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28.r,
            backgroundColor: AppColors.veryLightBlue,
            child: Image.asset(
              AppAssets.generalDoctorIcon,
              height: 28.h,
              width: 28.w,
            ),
          ),
          verticalSpace(8),
          Text(
            'General',
            style: AppTextStyle.font12RegularWithGray400.copyWith(
              color: AppColors.darkBlue,
            ),
          ),
        ],
      ),
    );
  }
}
