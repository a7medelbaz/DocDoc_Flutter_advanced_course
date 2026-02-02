import '../../../../core/themes/app_colors.dart';
import '../../../../core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildSocialIcon(
          onTap: () {
            /* Google Login */
          },
          iconPath: AppAssets.googleIcon,
        ),
        const SizedBox(width: 32),
        buildSocialIcon(
          onTap: () {
            /* Facebook Login */
          },
          iconPath: AppAssets.facebookIcon,
        ),
        const SizedBox(width: 32),
        buildSocialIcon(
          onTap: () {
            /* Apple Login */
          },
          iconPath: AppAssets.appleIcon,
        ),
      ],
    );
  }

  Widget buildSocialIcon({
    required VoidCallback onTap,
    required String iconPath,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: AppColors.whiteSmoke,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(iconPath, width: 24, height: 24),
      ),
    );
  }
}
