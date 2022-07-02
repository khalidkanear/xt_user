class OtpVerificationModel {
  int? id;
  String? email;
  String? mobile;
  int? verification_code;

  OtpVerificationModel(
      {this.id, this.email, this.mobile, this.verification_code});

  OtpVerificationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'] ?? null;
    mobile = json['mobile'] ?? null;
    verification_code = json['verification_code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.mobile != null) {
      data['mobile'] = this.mobile;
    }
    if (this.verification_code != null) {
      data['verification_code'] = this.mobile;
    }
    return data;
  }
}
