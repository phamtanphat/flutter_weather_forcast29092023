class WindDTO {
  num? speed;
  num? deg;
  num? gust;

  WindDTO({this.speed, this.deg, this.gust});

  WindDTO.fromJson(Map<String, dynamic> json) {
    speed = json['speed'];
    deg = json['deg'];
    gust = json['gust'];
  }
}
