class CloudDTO {
  num? all;

  CloudDTO({this.all});

  CloudDTO.fromJson(Map<String, dynamic> json) {
    all = json['all'];
  }
}