class User {
  String? id;
  String? phone;
  String? name;
  String? email;
  String? address;
  String? datereg;
  String? otp;

  User(
      {required this.id,
      required this.phone,
      required this.name,
      required this.email,
      required this.address,
      required this.datereg,
      required this.otp});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    phone = json['phone'];
    name = json['name'];
    email = json['email'];
    address = json['address'];
    datereg = json['datereg'];
    otp = json['otp'];
  }
}