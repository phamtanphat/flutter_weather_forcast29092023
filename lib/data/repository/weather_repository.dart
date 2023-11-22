import 'dart:async';

import 'package:flutter_weather_forcast29092023/data/api/api_service.dart';
import 'package:flutter_weather_forcast29092023/data/api/dto/search_weather_from_city_dto.dart';

class WeatherRepository {
  ApiService? _apiService;

  void setApiService(ApiService apiService) {
    _apiService = apiService;
  }

  Future<SearchWeatherFromCityDTO> executeGetWeatherFromCity(String cityName) {
    Completer<SearchWeatherFromCityDTO> completer = Completer();
    _apiService
        ?.requestWeatherFromCity(cityName)
        .then((dataResponse) { print(dataResponse); })
        .catchError((error) { completer.completeError(error); });

    return completer.future;
  }
}