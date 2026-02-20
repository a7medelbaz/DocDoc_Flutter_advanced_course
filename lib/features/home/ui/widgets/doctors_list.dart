import 'package:doc_doc/core/helper/spacing.dart';
import 'package:doc_doc/core/themes/app_text_style.dart';
import 'package:doc_doc/core/utils/app_assets.dart';
import 'package:doc_doc/features/home/ui/widgets/see_all_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SeeAllTitle(
          title: 'Recommendation Doctor',
          onTap: () {
            //ToDo
          },
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: _buildDoctorCard(),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildDoctorCard() {
    return Container(
      padding: EdgeInsets.all(8.r),
      child: Row(
        children: [
          Image.asset(
            AppAssets.doctorImageCard,
            height: 110.h,
            width: 110,
          ),
          horizontalSpace(16),
          _buildDoctorDetails(),
        ],
      ),
    );
  }

  Widget _buildDoctorDetails() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dr. Randy Wigham',
          style: AppTextStyle.font16BoldWithDarkBlue,
        ),
        verticalSpace(8),
        Row(
          children: [
            Text(
              'General',
              style: AppTextStyle.font12RegularWithGray,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Text(
                '|',
                style: AppTextStyle.font12RegularWithGray,
              ), // The divider
            ),
            Text(
              'RSUD Gatot Subroto',
              style: AppTextStyle.font12RegularWithGray,
            ),
          ],
        ),
        verticalSpace(12),
        Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.amber, // Or your specific yellow color
              size: 16.sp,
            ),
            horizontalSpace(4),
            Text(
              '4.8',
              style: AppTextStyle
                  .font12RegularWithGray, // Use a slightly darker gray if available
            ),
            horizontalSpace(4),
            Text(
              '(4,273 reviews)',
              style: AppTextStyle.font12RegularWithGray,
            ),
          ],
        ),
      ],
    );
  }
}
