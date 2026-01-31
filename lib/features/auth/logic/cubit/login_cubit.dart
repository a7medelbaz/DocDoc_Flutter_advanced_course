import 'package:doc_doc/core/networking/api_results.dart';
import 'package:doc_doc/features/auth/data/models/login_request_body.dart';
import 'package:doc_doc/features/auth/data/repos/login_repo.dart';
import 'package:doc_doc/features/auth/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  emitLoginState(LoginRequestBody loginRequestBody) async {
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
