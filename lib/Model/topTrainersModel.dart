class TopTrainersModelClass {
  int? id;
  String? fullName;
  String? email;
  String? mobile;
  String? image;
  String? emailVerifiedAt;
  bool? status;
  int? roleId;
  String? deletedAt;
  String? createdAt;
  String? twoFactorSecret;
  String? twoFactorRecoveryCodes;
  String? mobileVerifiedAt;
  int? mobileVerificationCode;
  String? language;
  String? passwordResetAt;
  String? twoFaCode;
  String? twoFaCreatedAt;
  String? twoFaConfirmed;
  String? height;
  String? dateOfBirth;
  int? likes;
  bool? smsOptIn;
  bool? privacyPolicy;
  String? ratings;
  String? fbId;
  bool? isActive;
  String? fcmDeviceToken;
  String? countryCode;
  bool? isTestUser;
  bool? liked;
  List<String>? isLiked;

  TopTrainersModelClass(
      {this.id,
        this.fullName,
        this.email,
        this.mobile,
        this.image,
        this.emailVerifiedAt,
        this.status,
        this.roleId,
        this.deletedAt,
        this.createdAt,
        this.twoFactorSecret,
        this.twoFactorRecoveryCodes,
        this.mobileVerifiedAt,
        this.mobileVerificationCode,
        this.language,
        this.passwordResetAt,
        this.twoFaCode,
        this.twoFaCreatedAt,
        this.twoFaConfirmed,
        this.height,
        this.dateOfBirth,
        this.likes,
        this.smsOptIn,
        this.privacyPolicy,
        this.ratings,
        this.fbId,
        this.isActive,
        this.fcmDeviceToken,
        this.countryCode,
        this.isTestUser,
        this.liked,
        this.isLiked});

  TopTrainersModelClass.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['full_name'];
    email = json['email'];
    mobile = json['mobile'];
    image = json['image'];
    emailVerifiedAt = json['email_verified_at'];
    status = json['status'];
    roleId = json['role_id'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    twoFactorSecret = json['two_factor_secret'];
    twoFactorRecoveryCodes = json['two_factor_recovery_codes'];
    mobileVerifiedAt = json['mobile_verified_at'];
    mobileVerificationCode = json['mobile_verification_code'];
    language = json['language'];
    passwordResetAt = json['password_reset_at'];
    twoFaCode = json['two_fa_code'];
    twoFaCreatedAt = json['two_fa_created_at'];
    twoFaConfirmed = json['two_fa_confirmed'];
    height = json['height'];
    dateOfBirth = json['date_of_birth'];
    likes = json['likes'];
    smsOptIn = json['sms_opt_in'];
    privacyPolicy = json['privacy_policy'];
    ratings = json['ratings'];
    fbId = json['fb_id'];
    isActive = json['is_active'];
    fcmDeviceToken = json['fcm_device_token'];
    countryCode = json['country_code'];
    isTestUser = json['is_test_user'];
    liked = json['liked'];
    if (json['is_liked'] != null) {
      isLiked = <String>[];
      json['is_liked'].forEach((v) {
        isLiked!.add((v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['full_name'] = this.fullName;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['image'] = this.image;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['status'] = this.status;
    data['role_id'] = this.roleId;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['two_factor_secret'] = this.twoFactorSecret;
    data['two_factor_recovery_codes'] = this.twoFactorRecoveryCodes;
    data['mobile_verified_at'] = this.mobileVerifiedAt;
    data['mobile_verification_code'] = this.mobileVerificationCode;
    data['language'] = this.language;
    data['password_reset_at'] = this.passwordResetAt;
    data['two_fa_code'] = this.twoFaCode;
    data['two_fa_created_at'] = this.twoFaCreatedAt;
    data['two_fa_confirmed'] = this.twoFaConfirmed;
    data['height'] = this.height;
    data['date_of_birth'] = this.dateOfBirth;
    data['likes'] = this.likes;
    data['sms_opt_in'] = this.smsOptIn;
    data['privacy_policy'] = this.privacyPolicy;
    data['ratings'] = this.ratings;
    data['fb_id'] = this.fbId;
    data['is_active'] = this.isActive;
    data['fcm_device_token'] = this.fcmDeviceToken;
    data['country_code'] = this.countryCode;
    data['is_test_user'] = this.isTestUser;
    data['liked'] = this.liked;
    if (this.isLiked != null) {
      data['is_liked'] = this.isLiked!.map((v) => v).toList();
    }
    return data;
  }
}
