import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/Widgets/app_elevated_button.dart';
import '../../logic/cubit/login_cubit.dart';
import '../widgets/registration_intro_text.dart';
import '../widgets/login_block_listener.dart';
import '../widgets/policy_and_sign_up.dart';
import '../widgets/registration_field.dart';
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
              right: 31.0,
              left: 31.0,
              top: 50,
              bottom: 24,
            ),
            child: Column(
              children: [
                RegistrationIntroText(),
                SizedBox(height: 36.h),
                RegistrationField(),
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
                PolicyAndSignUp(),
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
