//
class RecommendedClassModel {
  RecommendedClassModel({
    required this.id,
    required this.type,
    required this.userId,
    required this.description,
    required this.level,
    required this.timestamp,
    required this.duration,
    required this.image,
    required this.video,
    required this.price,
    required this.language,
    required this.limitedAttendance,
    required this.classRecurring,
    required this.createdAt,
    required this.updatedAt,
    required this.numberOfOccurrences,
    required this.endsAt,
    required this.status,
    required this.deletedAt,
    required this.totalWatches,
    required this.communication,
    required this.videoQuality,
    required this.trainingQuality,
    required this.workoutIntensity,
    required this.maxAttendees,
    required this.likes,
    required this.location,
    required this.isChat,
    required this.rating,
    required this.liked,
    required this.later,
    required this.trainer,
    required this.isLiked,
    required this.isLater,
  });
  late final int id;
  late final String type;
  late final int userId;
  late final String description;
  late final String level;
  late final String timestamp;
  late final String duration;
  late final String image;
  late final String video;
  late final int price;
  late final String language;
  late final String limitedAttendance;
  late final String classRecurring;
  late final String createdAt;
  late final String updatedAt;
  late final String numberOfOccurrences;
  late final String endsAt;
  late final bool status;
  late final String deletedAt;
  late final int totalWatches;
  late final String communication;
  late final String videoQuality;
  late final String trainingQuality;
  late final String workoutIntensity;
  late final String maxAttendees;
  late final String likes;
  late final String location;
  late final bool isChat;
  late final String rating;
  late final bool liked;
  late final bool later;
  late final Trainer trainer;
  late final List<dynamic> isLiked;
  late final List<dynamic> isLater;

  RecommendedClassModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    userId = json['user_id'];
    description = json['description'];
    level = json['level'];
    timestamp = json['timestamp'];
    duration = json['duration'];
    image = json['image'];
    video = json['video'];
    price = json['price'];
    language = json['language'];
    limitedAttendance = json['limited_attendance'].toString();
    classRecurring = json['class_recurring'].toString();
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    numberOfOccurrences = json['number_of_occurrences'].toString();
    endsAt = json['ends_at'].toString();
    status = json['status'];
    deletedAt = json['deleted_at'].toString();
    totalWatches = json['total_watches'];
    communication = json['communication'];
    videoQuality = json['video_quality'];
    trainingQuality = json['training_quality'];
    workoutIntensity = json['workout_intensity'];
    maxAttendees = json['max_attendees'].toString();
    likes = json['likes'].toString();
    location = json['location'].toString();
    isChat = json['is_chat'];
    rating = json['rating'].toString();
    liked = json['liked'];
    later = json['later'];
    trainer = Trainer.fromJson(json['trainer']);
    isLiked = List.castFrom<dynamic, dynamic>(json['is_liked']);
    isLater = List.castFrom<dynamic, dynamic>(json['is_later']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['type'] = type;
    _data['user_id'] = userId;
    _data['description'] = description;
    _data['level'] = level;
    _data['timestamp'] = timestamp;
    _data['duration'] = duration;
    _data['image'] = image;
    _data['video'] = video;
    _data['price'] = price;
    _data['language'] = language;
    _data['limited_attendance'] = limitedAttendance;
    _data['class_recurring'] = classRecurring;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['number_of_occurrences'] = numberOfOccurrences;
    _data['ends_at'] = endsAt;
    _data['status'] = status;
    _data['deleted_at'] = deletedAt;
    _data['total_watches'] = totalWatches;
    _data['communication'] = communication;
    _data['video_quality'] = videoQuality;
    _data['training_quality'] = trainingQuality;
    _data['workout_intensity'] = workoutIntensity;
    _data['max_attendees'] = maxAttendees;
    _data['likes'] = likes;
    _data['location'] = location;
    _data['is_chat'] = isChat;
    _data['rating'] = rating;
    _data['liked'] = liked;
    _data['later'] = later;
    _data['trainer'] = trainer.toJson();
    _data['is_liked'] = isLiked;
    _data['is_later'] = isLater;
    return _data;
  }
}

class Trainer {
  Trainer({
    required this.id,
    required this.fullName,

    //required this.lastName,


    required this.email,
    required this.mobile,
    required this.image,
    required this.emailVerifiedAt,
    required this.status,
    required this.roleId,
    required this.deletedAt,
    required this.createdAt,
    required this.twoFactorSecret,
    required this.twoFactorRecoveryCodes,
    required this.mobileVerifiedAt,
    required this.mobileVerificationCode,
    required this.language,
    required this.passwordResetAt,
    required this.twoFaCode,
    required this.twoFaCreatedAt,
    required this.twoFaConfirmed,
    required this.height,
    required this.dateOfBirth,
    required this.likes,
    required this.smsOptIn,
    required this.privacyPolicy,
    required this.ratings,
    required this.fbId,
    required this.isActive,
    required this.fcmDeviceToken,
    required this.countryCode,
    required this.isTestUser,
    required this.liked,
    required this.isLiked,
  });
  late final int id;
  late final String fullName;

  // late final String lastName;



  late final String email;
  late final String mobile;
  late final String image;
  late final String emailVerifiedAt;
  late final bool status;
  late final int roleId;
  late final String deletedAt;
  late final String createdAt;
  late final String twoFactorSecret;
  late final String twoFactorRecoveryCodes;
  late final String mobileVerifiedAt;
  late final int mobileVerificationCode;
  late final String language;
  late final String passwordResetAt;
  late final String twoFaCode;
  late final String twoFaCreatedAt;
  late final String twoFaConfirmed;
  late final String height;
  late final String dateOfBirth;
  late final int likes;
  late final bool smsOptIn;
  late final bool privacyPolicy;
  late final String ratings;
  late final String fbId;
  late final bool isActive;
  late final String fcmDeviceToken;
  late final String countryCode;
  late final bool isTestUser;
  late final bool liked;
  late final List<dynamic> isLiked;

  Trainer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['full_name'];
    //lastName = json['last_name'];
    email = json['email'];
    mobile = json['mobile'];
    image = json['image'];
    emailVerifiedAt = json['email_verified_at'];
    status = json['status'];
    roleId = json['role_id'];
    deletedAt = json['deleted_at'].toString();
    createdAt = json['created_at'];
    twoFactorSecret = json['two_factor_secret'].toString();
    twoFactorRecoveryCodes = json['two_factor_recovery_codes'].toString();
    mobileVerifiedAt = json['mobile_verified_at'];
    mobileVerificationCode = json['mobile_verification_code'];
    language = json['language'];
    passwordResetAt = json['password_reset_at'].toString();
    twoFaCode = json['two_fa_code'].toString();
    twoFaCreatedAt = json['two_fa_created_at'].toString();
    twoFaConfirmed = json['two_fa_confirmed'].toString();
    height = json['height'].toString();
    dateOfBirth = json['date_of_birth'].toString();
    likes = json['likes'];
    smsOptIn = json['sms_opt_in'];
    privacyPolicy = json['privacy_policy'];
    ratings = json['ratings'];
    fbId = json['fb_id'].toString();
    isActive = json['is_active'];
    fcmDeviceToken = json['fcm_device_token'].toString();
    countryCode = json['country_code'].toString();
    isTestUser = json['is_test_user'];
    liked = json['liked'];
    isLiked = List.castFrom<dynamic, dynamic>(json['is_liked']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;

    _data['first_name'] = fullName;
    //  _data['last_name'] = lastName;

    _data['full_name'] = fullName;


    _data['email'] = email;
    _data['mobile'] = mobile;
    _data['image'] = image;
    _data['email_verified_at'] = emailVerifiedAt;
    _data['status'] = status;
    _data['role_id'] = roleId;
    _data['deleted_at'] = deletedAt;
    _data['created_at'] = createdAt;
    _data['two_factor_secret'] = twoFactorSecret;
    _data['two_factor_recovery_codes'] = twoFactorRecoveryCodes;
    _data['mobile_verified_at'] = mobileVerifiedAt;
    _data['mobile_verification_code'] = mobileVerificationCode;
    _data['language'] = language;
    _data['password_reset_at'] = passwordResetAt;
    _data['two_fa_code'] = twoFaCode;
    _data['two_fa_created_at'] = twoFaCreatedAt;
    _data['two_fa_confirmed'] = twoFaConfirmed;
    _data['height'] = height;
    _data['date_of_birth'] = dateOfBirth;
    _data['likes'] = likes;
    _data['sms_opt_in'] = smsOptIn;
    _data['privacy_policy'] = privacyPolicy;
    _data['ratings'] = ratings;
    _data['fb_id'] = fbId;
    _data['is_active'] = isActive;
    _data['fcm_device_token'] = fcmDeviceToken;
    _data['country_code'] = countryCode;
    _data['is_test_user'] = isTestUser;
    _data['liked'] = liked;
    _data['is_liked'] = isLiked;
    return _data;
  }
}
