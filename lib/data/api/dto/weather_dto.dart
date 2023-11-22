class WeatherDTO {
  int? id;
  String? main;
  String? description;
  String? icon;

  WeatherDTO({this.id, this.main, this.description, this.icon});

  WeatherDTO.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }
}