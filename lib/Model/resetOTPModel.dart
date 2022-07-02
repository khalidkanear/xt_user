class ResetOTPModel {
  int? code;
  String? mobile;

  ResetOTPModel({this.code, this.mobile});

  ResetOTPModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    mobile = json['mobile'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['mobile'] = this.mobile;
    return data;
  }
}
