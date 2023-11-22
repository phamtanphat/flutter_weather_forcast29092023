import 'package:flutter_weather_forcast29092023/data/api/dto/cloud_dto.dart';
import 'package:flutter_weather_forcast29092023/data/api/dto/coord_dto.dart';
import 'package:flutter_weather_forcast29092023/data/api/dto/nain_dto.dart';
import 'package:flutter_weather_forcast29092023/data/api/dto/sys_dto.dart';
import 'package:flutter_weather_forcast29092023/data/api/dto/weather_dto.dart';
import 'package:flutter_weather_forcast29092023/data/api/dto/wind_dto.dart';

class SearchWeatherFromCityDTO {
  CoordDTO? coord;
  List<WeatherDTO>? weather;
  String? base;
  MainDTO? main;
  num? visibility;
  WindDTO? wind;
  CloudDTO? cloud;
  num? dt;
  SysDTO? sys;
  num? timezone;
  num? id;
  String? name;
  num? cod;

  SearchWeatherFromCityDTO({
        this.coord,
        this.weather,
        this.base,
        this.main,
        this.visibility,
        this.wind,
        this.cloud,
        this.dt,
        this.sys,
        this.timezone,
        this.id,
        this.name,
        this.cod
  });

  SearchWeatherFromCityDTO.fromJson(Map<String, dynamic> json) {
    coord = json['coord'] != null ? CoordDTO.fromJson(json['coord']) : null;
    if (json['weather'] != null) {
      weather = [];
      json['weather'].forEach((v) {
        weather?.add(WeatherDTO.fromJson(v));
      });
    }
    base = json['base'];
    main = json['main'] != null ? MainDTO.fromJson(json['main']) : null;
    visibility = json['visibility'];
    wind = json['wind'] != null ? WindDTO.fromJson(json['wind']) : null;
    cloud = json['clouds'] != null ? CloudDTO.fromJson(json['clouds']) : null;
    dt = json['dt'];
    sys = json['sys'] != null ? SysDTO.fromJson(json['sys']) : null;
    timezone = json['timezone'];
    id = json['id'];
    name = json['name'];
    cod = json['cod'];
  }
}