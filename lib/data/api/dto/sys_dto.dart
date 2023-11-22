class SysDTO {
  num? type;
  num? id;
  String? country;
  num? sunrise;
  num? sunset;

  SysDTO({this.type, this.id, this.country, this.sunrise, this.sunset});

  SysDTO.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
    country = json['country'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }
}