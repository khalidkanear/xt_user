class ResetPasswordModel {
  String? mobile;
  String? password;

  ResetPasswordModel({this.mobile, this.password});

  ResetPasswordModel.fromJson(Map<String, dynamic> json) {
    mobile = json['mobile'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mobile'] = this.mobile;
    data['password'] = this.password;
    return data;
  }
}
