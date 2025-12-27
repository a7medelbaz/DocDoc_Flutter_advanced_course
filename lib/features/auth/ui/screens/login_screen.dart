import 'package:doc_doc/core/Widgets/app_elevated_button.dart';
import 'package:doc_doc/features/auth/ui/widgets/log_in_intro_text.dart';
import 'package:doc_doc/features/auth/ui/widgets/policy_and_sign_up.dart';
import 'package:doc_doc/features/auth/ui/widgets/registration_field.dart';
import 'package:doc_doc/features/auth/ui/widgets/social_login_buttons.dart';
import 'package:doc_doc/features/auth/ui/widgets/social_login_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              right: 31.0,
              left: 31.0,
              top: 50,
              bottom: 24,
            ),
            child: Column(
              children: [
                LogInIntroText(),
                SizedBox(height: 36.h),
                RegistrationField(),
                SizedBox(height: 32.h),
                AppElevatedButton(onPressed: () {}, text: " Log In"),
                SizedBox(height: 46.h),
                SocialLoginDivider(),
                SizedBox(height: 32.h),
                SocialLoginButtons(),
                SizedBox(height: 93.h),
                PolicyAndSignUp(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
