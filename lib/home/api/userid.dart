class Userid {
  final String type;
  final String cid;
  Userid({
    required this.type,
    required this.cid,
  });
  factory Userid.fromJson(Map<String, dynamic> json) {
    return Userid(type: json['type'], cid: json['cid']);
  }
}
