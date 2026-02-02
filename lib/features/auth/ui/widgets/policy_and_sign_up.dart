import '../../../../core/helper/extensions.dart';
import '../../../../core/routers/routes.dart';
import '../../../../core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class PolicyAndSignUp extends StatelessWidget {
  const PolicyAndSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Already have an account yet?'),
        GestureDetector(
          onTap: () {
            context.pushNamed(Routes.signUpScreen);
          },
          child: Text(
            ' Sign Up',
            style: TextStyle(
              color: AppColors.mainBlue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
