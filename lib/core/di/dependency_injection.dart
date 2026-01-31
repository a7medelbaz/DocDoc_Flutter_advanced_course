import 'package:dio/dio.dart';
import 'package:doc_doc/core/networking/api_service.dart';
import 'package:doc_doc/core/networking/dio_factory.dart';
import 'package:doc_doc/features/auth/data/repos/login_repo.dart';
import 'package:doc_doc/features/auth/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  /// Dio and Api service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  // loin
  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}
