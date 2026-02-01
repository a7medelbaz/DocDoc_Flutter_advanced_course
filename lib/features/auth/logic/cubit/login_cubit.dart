import 'package:doc_doc/core/networking/api_results.dart';
import 'package:doc_doc/features/auth/data/models/login_request_body.dart';
import 'package:doc_doc/features/auth/data/repos/login_repo.dart';
import 'package:doc_doc/features/auth/logic/cubit/login_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }

  /// Login Method
  emitLoginStates() async {
    LoginRequestBody loginRequestBody = LoginRequestBody(
      email: emailController.text,
      password: passwordController.text,
    );
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);

    response.when(
      success: (data) {
        emit(LoginState.success(data));
      },
      failure: (error) {
        emit(
          LoginState.error(error: error.apiErrorModel.message ?? ''),
        );
      },
    );
  }
}
