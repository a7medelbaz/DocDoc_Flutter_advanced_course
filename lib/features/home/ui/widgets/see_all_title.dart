import 'package:flutter/material.dart';

import '../../../../core/themes/app_text_style.dart';

class SeeAllTitle extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const SeeAllTitle({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTextStyle.font18BoldWithMattBlack),
        InkWell(
          onTap: () {
            onTap;
          },
          child: Text(
            'See All',
            style: AppTextStyle.font12RegularWithMainBlue,
          ),
        ),
      ],
    );
  }
}
