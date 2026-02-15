import 'package:bloc/bloc.dart';
import 'package:doc_doc/core/networking/api_results.dart';
import 'package:doc_doc/features/auth/logic/SignUPCubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import '../../data/models/sign_up_request_body.dart';
import '../../data/repos/sign_up_repo.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signupRepo;
  SignUpCubit(this._signupRepo) : super(const SignUpState.initial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const SignUpState.loading());
    final response = await _signupRepo.signup(
      SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: '0',
      ),
    );
    response.when(
      success: (signupResponse) {
        emit(SignUpState.success(signupResponse));
      },
      failure: (error) {
        emit(
          SignUpState.error(error: error.apiErrorModel.message ?? ''),
        );
      },
    );
  }
}
