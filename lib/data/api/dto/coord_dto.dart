class CoordDTO {
  num? lon;
  num? lat;

  CoordDTO({this.lon, this.lat});

  CoordDTO.fromJson(Map<String, dynamic> json) {
    lon = json['lon'];
    lat = json['lat'];
  }
}