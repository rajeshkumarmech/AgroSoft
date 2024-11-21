// ignore_for_file: public_member_api_docs, sort_constructors_first
class Purchaseprice {
  String type;
  String cid;
  String uid;
  String aid;
  String date;
  String pid;
  String pname;
  String prgroup;
  String price;
  Purchaseprice({
    required this.type,
    required this.cid,
    required this.uid,
    required this.aid,
    required this.date,
    required this.pid,
    required this.pname,
    required this.prgroup,
    required this.price,
  });
  factory Purchaseprice.fromJson(Map<String, dynamic> json) {
    return Purchaseprice(
        type: json['type'],
        cid: json['cid'],
        uid: json['uid'],
        aid: json['aid'],
        date: json['date'],
        pid: json['pid'],
        pname: json['pname'],
        prgroup: json['prgroup'],
        price: json['price']);
  }
}
