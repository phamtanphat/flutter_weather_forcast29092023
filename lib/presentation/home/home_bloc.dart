import 'dart:async';

import 'package:flutter_weather_forcast29092023/base/base_bloc.dart';
import 'package:flutter_weather_forcast29092023/base/base_event.dart';
import 'package:flutter_weather_forcast29092023/data/model/weather.dart';
import 'package:flutter_weather_forcast29092023/data/repository/weather_repository.dart';
import 'package:flutter_weather_forcast29092023/presentation/home/home_event.dart';
import 'package:flutter_weather_forcast29092023/util/WeatherUtil.dart';

class HomeBloc extends BaseBloc{
  WeatherRepository? _weatherRepository;
  StreamController<Weather> weatherController = StreamController();

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
    loadingSink.add(true);
    _weatherRepository?.executeGetWeatherFromCity(event.cityName)
        .then((searchWeatherFromCityDTO) {
           var weather = WeatherUtil.parseWeatherFromCityToWeather(searchWeatherFromCityDTO);
            weatherController.sink.add(weather);
        })
        .catchError((error) { messageSink.add(error); })
        .whenComplete(() => loadingSink.add(false));
  }
}