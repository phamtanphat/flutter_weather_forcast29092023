import 'package:flutter_weather_forcast29092023/base/base_bloc.dart';
import 'package:flutter_weather_forcast29092023/base/base_event.dart';
import 'package:flutter_weather_forcast29092023/data/repository/weather_repository.dart';
import 'package:flutter_weather_forcast29092023/presentation/home/home_event.dart';

class HomeBloc extends BaseBloc{
  WeatherRepository? _weatherRepository;

  void setWeatherRepository(WeatherRepository weatherRepository) {
    _weatherRepository = weatherRepository;
  }

  @override
  void dispatch(BaseEvent event) {
    switch(event.runtimeType) {
      case GetWeatherFromCityEvent:
        _requestWeatherFromCityName(event as GetWeatherFromCityEvent);
        break;
    }
  }

  void _requestWeatherFromCityName(GetWeatherFromCityEvent event) {
      _weatherRepository?.executeGetWeatherFromCity(event.cityName)
          .then((searchWeatherFromCityDTO) {

          })
          .catchError((error) => print(error));
  }
}