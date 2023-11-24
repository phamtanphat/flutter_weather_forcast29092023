class Weather {
  String status = "";
  String description = "";
  num temp = 0;
  num tempMin = 0;
  num tempMax = 0;
  String icon = "";
  num winSpeed = 0;
  num sunrise = 0;
  num sunset = 0;
  num humidity = 0;
  num time = 0;
  String country = "";
  String name = "";

  Weather();

  Weather.init({
    required this.status,
    required this.description,
    required this.temp,
    required this.tempMin,
    required this.tempMax,
    required this.icon,
    required this.winSpeed,
    required this.sunrise,
    required this.sunset,
    required this.humidity,
    required this.time,
    required this.country,
    required this.name
  });
}
