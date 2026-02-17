import 'package:doc_doc/core/helper/spacing.dart';
import 'package:doc_doc/core/themes/app_text_style.dart';
import 'package:doc_doc/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helper/constants.dart';

class NearestDoctorContainer extends StatelessWidget {
  const NearestDoctorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: AlignmentGeometry.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 167.h,
            padding: EdgeInsets.all(16.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              image: const DecorationImage(
                image: AssetImage(AppAssets.nearestDoctorBackground),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ConstantsText.homeNearestDoctorText,
                  style: AppTextStyle.font18MediumWhite,
                ),
                verticalSpace(16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // ToDo
                    },
                    child: Text(
                      'Find Nearby',
                      style: AppTextStyle.font12RegularWithMainBlue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 16.w,
            top: 0,
            child: Image.asset(
              AppAssets.nurseImage,
              height: 195.h, // This matches the SizedBox height
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
