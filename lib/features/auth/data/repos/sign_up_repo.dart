import 'package:doc_doc/features/auth/data/models/sign_up_request_body.dart';
import 'package:doc_doc/features/auth/data/models/sign_up_response_body.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_results.dart';
import '../../../../core/networking/api_service.dart';

class SignUpRepo {
  final ApiService _apiService;

  SignUpRepo(this._apiService);

  Future<ApiResult<SignUpResponseBody>> signup(
    SignUpRequestBody signUpRequestBody,
  ) async {
    try {
      final response = await _apiService.signup(signUpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}