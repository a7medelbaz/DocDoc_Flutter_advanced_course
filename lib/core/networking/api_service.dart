import 'package:dio/dio.dart';
import 'package:doc_doc/core/networking/api_constants.dart';
import 'package:doc_doc/features/auth/data/models/login_request_body.dart';
import 'package:doc_doc/features/auth/data/models/login_response_body.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(@Body() LoginRequestBody logInRequestBody);
}


///? Without retrofit

/* import 'package:dio/dio.dart';
import 'package:doc_doc/core/networking/api_constants.dart';
import 'package:doc_doc/features/auth/data/models/login_request_body.dart';
import 'package:doc_doc/features/auth/data/models/login_response_body.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  Future<LoginResponseBody> login(LoginRequestBody loginRequestBody) async {
    try {
      // 1. Make the POST request
      final response = await _dio.post(
        ApiConstants.login,
        data: loginRequestBody.toJson(), // Convert object to Map
      );

      // 2. Map the dynamic data back to your Model
      return LoginResponseBody.fromJson(response.data);
      
    } on DioException catch (e) {
      // 3. Manual error handling
      throw Exception("Failed to login: ${e.message}");
    }
  }
}*/