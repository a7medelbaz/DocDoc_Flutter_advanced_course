import 'package:doc_doc/core/Widgets/app_text_form_field.dart';
import 'package:doc_doc/core/helper/app_regex.dart';
import 'package:doc_doc/core/helper/spacing.dart';
import 'package:doc_doc/core/themes/app_text_style.dart';
import 'package:doc_doc/features/auth/logic/cubit/login_cubit.dart';
import 'package:doc_doc/features/auth/ui/widgets/password_validations.dart';
import 'package:doc_doc/features/auth/ui/widgets/remember_me_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegistrationField extends StatefulWidget {
  const RegistrationField({super.key});

  @override
  State<RegistrationField> createState() => _RegistrationFieldState();
}

class _RegistrationFieldState extends State<RegistrationField> {
  bool isObscureText = true;

  // bool hasLowercase = false;
  // bool hasUppercase = false;
  // bool hasSpecialCharacters = false;
  // bool hasNumber = false;
  // bool hasMinLength = false;

  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context
        .read<LoginCubit>()
        .passwordController;
    // setupPasswordControllerListener();
  }

  ///? instead I used ValueListenableBuilder
  // void setupPasswordControllerListener() {
  //   passwordController.addListener(() {
  //     setState(() {
  //       hasLowercase = AppRegex.hasLowerCase(passwordController.text);
  //       hasUppercase = AppRegex.hasUpperCase(passwordController.text);
  //       hasSpecialCharacters =
  //           AppRegex.hasSpecialCharacter(passwordController.text);
  //       hasNumber = AppRegex.hasNumber(passwordController.text);
  //       hasMinLength = AppRegex.hasMinLength(passwordController.text);
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          // Email Field
          AppTextFormField(
            hintText: 'Enter Your Email',
            labelText: 'Email',
            validator: (email) {
              if (email == null ||
                  email.isEmpty ||
                  !AppRegex.isEmailValid(email)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          SizedBox(height: 16.h),
          // Password Field
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ) {
                return 'Please enter a valid password';
              }
            },
            hintText: 'Enter Your Password',
            labelText: 'Password',
          ),
          verticalSpace(24),
          ValueListenableBuilder(
            valueListenable: passwordController,
            builder: (context, value, child) {
              return PasswordValidations(
                hasLowerCase: AppRegex.hasLowerCase(value.text),
                hasUpperCase: AppRegex.hasUpperCase(value.text),
                hasSpecialCharacters: AppRegex.hasSpecialCharacters(
                  value.text,
                ),
                hasNumber: AppRegex.hasNumber(value.text),
                hasMinLength: AppRegex.hasMinLength(value.text),
              );
            },
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RememberMeBox(),
              GestureDetector(
                child: Text(
                  'Forgot Password?',
                  style: AppTextStyle.font12RegularWithMainBlue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
