class ForgetEmailResponseModel {
  final String token;
  final String error;
  final String role;
  ForgetEmailResponseModel({required this.token,required this.role, required this.error});
  factory ForgetEmailResponseModel.fromJson(Map<String, dynamic> json) {
    return ForgetEmailResponseModel(
      token: json["token"] != null ? json["token"] : "",
      role: json["role"] != null ? json["role"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
}

class ForgetEmailRequestModel {
  late String Email;

  ForgetEmailRequestModel({
    required this.Email,
  });
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'username': Email.trim(),

    };
    return map;
  }
}