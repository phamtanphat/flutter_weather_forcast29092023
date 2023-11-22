import 'package:flutter_weather_forcast29092023/data/repository/weather_repository.dart';

class HomeBloc {
  WeatherRepository? _weatherRepository;

  void setWeatherRepository(WeatherRepository weatherRepository) {
    _weatherRepository = weatherRepository;
  }

}