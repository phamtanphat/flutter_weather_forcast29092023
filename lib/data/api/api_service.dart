import 'package:dio/dio.dart';
import 'package:flutter_weather_forcast29092023/common/app_constant.dart';
import 'package:flutter_weather_forcast29092023/data/api/dio_client.dart';

class ApiService {
  final Dio _dio = DioClient.getInstance().getDio();

  Future<Response<dynamic>> requestWeatherFromCity(String cityName) {
    return _dio.get("data/2.5/weather", queryParameters: {
      "units": "metric",
      "appid": AppConstant.APP_ID,
      "q": cityName
    });
  }
}