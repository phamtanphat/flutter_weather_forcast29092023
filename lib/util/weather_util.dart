import 'package:flutter_weather_forcast29092023/data/api/dto/weather_from_city_dto.dart';
import 'package:flutter_weather_forcast29092023/data/model/weather.dart';

class WeatherUtil {
  static Weather parseWeatherFromCityToWeather(SearchWeatherFromCityDTO dto) {
    return Weather.init(
        name: dto.name ?? "",
        country: dto.sys?.country ?? "",
        icon: dto.weather?[0].icon ?? "",
        description: dto.weather?[0].description ?? "",
        status: dto.weather?[0].main ?? "",
        humidity: dto.main?.humidity ?? 0,
        winSpeed: dto.wind?.speed ?? 0,
        temp: dto.main?.temp ?? 0,
        tempMax: dto.main?.tempMax ?? 0,
        tempMin: dto.main?.tempMin ?? 0,
        sunrise: dto.sys?.sunrise ?? 0,
        sunset: dto.sys?.sunset ?? 0,
        time: dto.dt ?? 0
    );
  }
}
