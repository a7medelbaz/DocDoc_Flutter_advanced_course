import 'package:doc_doc/core/themes/app_text_style.dart';
import 'package:doc_doc/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DoctorImageAndSubtitle extends StatelessWidget {
  const DoctorImageAndSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AppAssets.appLogoWithLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                // Transparent white (alpha 0.0)
                Colors.white.withValues(alpha: 0.0),
                // Fully opaque white (alpha 1.0)
                Colors.white.withValues(alpha: 1),
              ],
              begin: Alignment
                  .topCenter, // Fade starts from the center of the image
              end: Alignment
                  .bottomCenter, // Fade ends at the bottom edge
              stops: const [
                .6,
                .9,
              ], // Controls the transition points of the gradient
            ),
          ),
          child: Image(
            image: AssetImage(AppAssets.doctorImage),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: AppTextStyle.font32BoldWithMainBlue,
          ),
        ),
      ],
    );
  }
}
