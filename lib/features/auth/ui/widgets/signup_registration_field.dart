import 'package:doc_doc/core/helper/spacing.dart';
import 'package:doc_doc/features/auth/ui/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/Widgets/app_text_form_field.dart';
import '../../../../core/helper/app_regex.dart';
import '../../logic/SignUPCubit/sign_up_cubit.dart';
import 'signup_phone_field.dart';

class SignupRegistrationField extends StatefulWidget {
  const SignupRegistrationField({super.key});

  @override
  State<SignupRegistrationField> createState() =>
      _SignupRegistrationFieldState();
}

class _SignupRegistrationFieldState
    extends State<SignupRegistrationField> {
  bool isObscureText = true;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context
        .read<SignUpCubit>()
        .passwordController;
    // setupPasswordControllerListener();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignUpCubit>().formKey,
      child: Column(
        children: [
          // Email
          AppTextFormField(
            hintText: 'Enter a valid Email',
            labelText: 'Email',
            controller: context.read<SignUpCubit>().emailController,
            validator: (email) {
              if (email == null ||
                  email.isEmpty ||
                  !AppRegex.isEmailValid(email)) {
                return 'Please enter a valid email';
              }
            },
          ),
          // Password
          verticalSpace(16),
          AppTextFormField(
            hintText: 'Enter a valid Password',
            labelText: 'Password',
            controller: passwordController,
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
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpace(16),
          SignupPhoneField(),
          verticalSpace(5),
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
        ],
      ),
    );
  }
}
