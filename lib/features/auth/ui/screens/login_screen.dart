import 'package:doc_doc/core/helper/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/Widgets/app_elevated_button.dart';
import '../../../../core/routers/routes.dart';
import '../../logic/cubit/login_cubit.dart';
import '../widgets/registration_intro_text.dart';
import '../widgets/login_block_listener.dart';
import '../widgets/policy_and_sign_up.dart';
import '../widgets/login_registration_field.dart';
import '../widgets/social_login_buttons.dart';
import '../widgets/social_login_divider.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              right: 31.0.w,
              left: 31.0.w,
              top: 50.h,
              bottom: 24.h,
            ),
            child: Column(
              children: [
                RegistrationIntroText(
                  introTitle: 'Welcome Back',
                  introMassage:
                      "We're excited to have you back, can't wait to see what you've been up to since you last \nlogged in.",
                ),
                SizedBox(height: 36.h),
                LoginRegistrationField(),
                SizedBox(height: 32.h),
                AppElevatedButton(
                  onPressed: () {
                    validateThenDoLogin(context);
                  },
                  text: " Log In",
                ),
                SizedBox(height: 46.h),
                SocialLoginDivider(),
                SizedBox(height: 32.h),
                SocialLoginButtons(),
                SizedBox(height: 24.h),
                PolicyAndSignUp(
                  registrationQuestionText:
                      'You don\'t have an account? ',
                  registrationOptionText: 'Sign Up',
                  registrationOptionNavigation: () =>
                      context.pushNamed(Routes.signUpScreen),
                ),
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
