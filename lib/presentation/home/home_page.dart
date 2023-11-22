import 'package:flutter/material.dart';
import 'package:flutter_weather_forcast29092023/data/api/api_service.dart';
import 'package:flutter_weather_forcast29092023/data/repository/weather_repository.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    ApiService apiService = ApiService();
    WeatherRepository repository = WeatherRepository();
    repository.setApiService(apiService);
    repository.executeGetWeatherFromCity("Hanoi")
        .then((value) => print(value));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page", style: TextStyle()),
      ),
    );
  }
}
