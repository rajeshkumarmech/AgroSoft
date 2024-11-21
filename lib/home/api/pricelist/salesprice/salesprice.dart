class Salesprice {
  String type;
  String cid;
  String uid;
  String aid;
  String date;
  String pid;
  String pname;
  String prgroup;
  String price;
  String sprice;
  String mprice;
  Salesprice({
    required this.type,
    required this.cid,
    required this.uid,
    required this.aid,
    required this.date,
    required this.pid,
    required this.pname,
    required this.prgroup,
    required this.price,
    required this.sprice,
    required this.mprice,
  });
  factory Salesprice.fromJson(Map<String, dynamic> json) {
    return Salesprice(
        type: json['type'],
        cid: json['cid'],
        uid: json['uid'],
        aid: json['aid'],
        date: json['date'],
        pid: json['pid'],
        pname: json['pname'],
        prgroup: json['prgroup'],
        price: json['price'],
        sprice: json['sprice'],
        mprice: json['mprice']);
  }
}
