import 'package:doc_doc/core/helper/spacing.dart';
import 'package:flutter/material.dart';

import '../../../../core/Widgets/app_text_form_field.dart';
import 'signup_phone_field.dart';

class SignupRegistrationField extends StatelessWidget {
  const SignupRegistrationField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Enter a valid Email',
            labelText: 'Email',
            validator: (email) {
              //ToDo email Validation
              return validator();
            },
          ),
          verticalSpace(16),
          AppTextFormField(
            hintText: 'Enter a valid Password',
            labelText: 'Password',
            validator: (password) {
              //ToDo email Validation
              return validator();
            },
          ),
          verticalSpace(16),
          SignupPhoneField(),
        ],
      ),
    );
  }
}

validator() {}
