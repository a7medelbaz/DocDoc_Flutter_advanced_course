import 'package:doc_doc/core/themes/app_colors.dart';
import 'package:doc_doc/core/themes/app_text_style.dart';
import 'package:doc_doc/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Ahmed',
              style: AppTextStyle.font18BoldWithMattBlack,
            ),
            Text(
              'How Are you Today?',
              style: AppTextStyle.font11RegularWithGray,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: AppColors.moreLightGray,
          radius: 24,
          child: SvgPicture.asset(AppAssets.alertIcon),
        ),
      ],
    );
  }
}
