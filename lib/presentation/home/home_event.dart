import 'package:flutter_weather_forcast29092023/base/base_event.dart';

class GetWeatherFromCityEvent extends BaseEvent {
  String cityName;

  GetWeatherFromCityEvent(this.cityName);

  @override
  List<Object?> get props => [];

}