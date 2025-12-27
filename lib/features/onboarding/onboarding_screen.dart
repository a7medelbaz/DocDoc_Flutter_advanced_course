import 'package:doc_doc/core/Widgets/app_elevated_button.dart';
import 'package:doc_doc/features/onboarding/widgets/doc_logo_and_name.dart';
import 'package:doc_doc/features/onboarding/widgets/doctor_image_and_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                DocLogoAndName(),
                SizedBox(height: 40.h),
                DoctorImageAndSubtitle(),
                Text(
                  'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 32.h),
                AppElevatedButton(
                  text: 'Get Started',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
