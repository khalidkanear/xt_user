
class LoginPhoneModel {
  String? username;
  String? password;

  LoginPhoneModel({this.username, this.password});

  LoginPhoneModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['password'] = this.password;
    return data;
  }
}


