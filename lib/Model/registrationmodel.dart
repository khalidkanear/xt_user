class RegistrationModel {
  String? full_name;
  String? email;
  String? mobile;

  String? password;
  String? role;
  String? bio;
  bool? smsOptIn;
  bool? privacyPolicy;

  RegistrationModel(
      {this.full_name,
        this.email,
        this.mobile,
        this.password,
        this.role,
        this.bio,
        this.smsOptIn,
        this.privacyPolicy, });

  RegistrationModel.fromJson(Map<String, dynamic> json) {
    full_name = json['full_name'];
    email = json['email'];
    mobile = json['mobile'];
    password = json['password'];
    role = json['role'];
    bio = json['bio'];
    smsOptIn = json['sms_opt_in'];
    privacyPolicy = json['privacy_policy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['full_name'] = this.full_name;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['password'] = this.password;
    data['role'] = this.role;
    data['bio'] = this.bio;
    data['sms_opt_in'] = this.smsOptIn;
    data['privacy_policy'] = this.privacyPolicy;
    return data;
  }
}
