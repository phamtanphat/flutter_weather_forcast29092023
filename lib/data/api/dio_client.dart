import 'package:dio/dio.dart';
import 'package:flutter_weather_forcast29092023/common/app_constant.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  Dio? _dio;

  static DioClient getInstance(){
    return _instance;
  }

  DioClient._internal();

  Dio getDio() {
    return _dio ??= Dio(BaseOptions(
      baseUrl: AppConstant.BASE_URL,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
    ));
  }
}