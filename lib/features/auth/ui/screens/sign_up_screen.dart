import 'package:doc_doc/core/helper/extensions.dart';
import 'package:doc_doc/core/helper/spacing.dart';
import 'package:doc_doc/features/auth/logic/SignUPCubit/sign_up_cubit.dart';
import 'package:doc_doc/features/auth/ui/widgets/sign_up_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/Widgets/app_elevated_button.dart';
import '../../../../core/routers/routes.dart';
import '../widgets/policy_and_sign_up.dart';
import '../widgets/registration_intro_text.dart';
import '../widgets/signup_registration_field.dart';
import '../widgets/social_login_buttons.dart';
import '../widgets/social_login_divider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                  introTitle: 'Create Account',
                  introMassage:
                      "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                ),
                verticalSpace(17),
                SignupRegistrationField(),
                verticalSpace(32),
                AppElevatedButton(
                  onPressed: () {
                    validateThenDoLogin(context);
                  },
                  text: 'Create Account',
                ),
                verticalSpace(32),
                SocialLoginDivider(),
                verticalSpace(32),
                SocialLoginButtons(),
                verticalSpace(32),
                PolicyAndSignUp(
                  registrationQuestionText:
                      'You don\'t have an account',
                  registrationOptionText: 'Login',
                  registrationOptionNavigation: () =>
                      context.pushNamed(Routes.loginScreen),
                ),
                SignUpBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context
        .read<SignUpCubit>()
        .formKey
        .currentState!
        .validate()) {
      context.read<SignUpCubit>().emitSignupStates();
    }
  }
}
