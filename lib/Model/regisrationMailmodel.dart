class RegistrationMailResponseModel {
  final String token;
  final String error;
  final String role;
  RegistrationMailResponseModel({required this.token,required this.role, required this.error});
  factory RegistrationMailResponseModel.fromJson(Map<String, dynamic> json) {
    return RegistrationMailResponseModel(
      token: json["token"] != null ? json["token"] : "",
      role: json["role"] != null ? json["role"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
}

class RegistrationMailRequestModel {
  late String firstname;
  late String lastname;
  late String password;
  late String phone;
  late String role;
  late String bio;
  late bool privacyPolicy;
  late bool sms_opt;

  RegistrationMailRequestModel({
    required this.firstname,
    required this.lastname,
    required this.password,
    required this.phone,
    required this.role,
    required this.bio,
    // required this.phone,
    required this.privacyPolicy,
    required this.sms_opt,

  });
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "first_name": firstname.trim(),
      "last_name": lastname.trim(),
      'password': password.trim(),
      'phone' : phone.trim(),
      'user' : role.trim(),
      'bio' : bio.trim(),
      'privacyPolicy': true,
      "sms_opt_in": true,

    };
    return map;
  }
}