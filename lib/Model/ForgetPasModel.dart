class ForgetResponseModel {
  final String token;
  final String error;
  final String role;
  ForgetResponseModel({required this.token,required this.role, required this.error});
  factory ForgetResponseModel.fromJson(Map<String, dynamic> json) {
    return ForgetResponseModel(
      token: json["token"] != null ? json["token"] : "",
      role: json["role"] != null ? json["role"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
}

class ForgetRequestModel {
 late String Forget;

  ForgetRequestModel({
    required this.Forget,
  });
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'username': Forget.trim(),

    };
    return map;
  }
}