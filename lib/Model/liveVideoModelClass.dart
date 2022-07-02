// To parse required this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
  });

  int currentPage;
  List<Datum> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  List<Link> links;
  dynamic nextPageUrl;
  String path;
  String perPage;
  dynamic prevPageUrl;
  int to;
  int total;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    currentPage: json["current_page"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    firstPageUrl: json["first_page_url"],
    from: json["from"],
    lastPage: json["last_page"],
    lastPageUrl: json["last_page_url"],
    links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
    nextPageUrl: json["next_page_url"],
    path: json["path"],
    perPage: json["per_page"],
    prevPageUrl: json["prev_page_url"],
    to: json["to"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "current_page": currentPage,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "first_page_url": firstPageUrl,
    "from": from,
    "last_page": lastPage,
    "last_page_url": lastPageUrl,
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
    "next_page_url": nextPageUrl,
    "path": path,
    "per_page": perPage,
    "prev_page_url": prevPageUrl,
    "to": to,
    "total": total,
  };
}

class Datum {
  Datum({
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
    required this.classTypes,
    required this.reviews,
    required this.user,
    required this.isLiked,
    required this.isLater,
  });

  int id;
  String type;
  int userId;
  String description;
  String level;
  DateTime timestamp;
  String duration;
  String image;
  dynamic video;
  int price;
  String language;
  bool limitedAttendance;
  bool classRecurring;
  DateTime createdAt;
  DateTime updatedAt;
  int numberOfOccurrences;
  DateTime endsAt;
  bool status;
  dynamic deletedAt;
  int totalWatches;
  String communication;
  String videoQuality;
  String trainingQuality;
  String workoutIntensity;
  dynamic maxAttendees;
  dynamic likes;
  dynamic location;
  bool isChat;
  dynamic rating;
  bool liked;
  bool later;
  List<ClassType> classTypes;
  List<Review> reviews;
  User user;
  List<dynamic> isLiked;
  List<dynamic> isLater;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    type: json["type"],
    userId: json["user_id"],
    description: json["description"],
    level: json["level"],
    timestamp: DateTime.parse(json["timestamp"]),
    duration: json["duration"],
    image: json["image"],
    video: json["video"],
    price: json["price"] == null ? null : json["price"],
    language: json["language"],
    limitedAttendance: json["limited_attendance"] == null ? null : json["limited_attendance"],
    classRecurring: json["class_recurring"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    numberOfOccurrences: json["number_of_occurrences"] == null ? null : json["number_of_occurrences"],
    endsAt: DateTime.parse(json["ends_at"]),
    status: json["status"],
    deletedAt: json["deleted_at"],
    totalWatches: json["total_watches"],
    communication: json["communication"],
    videoQuality: json["video_quality"],
    trainingQuality: json["training_quality"],
    workoutIntensity: json["workout_intensity"],
    maxAttendees: json["max_attendees"],
    likes: json["likes"],
    location: json["location"],
    isChat: json["is_chat"],
    rating: json["rating"],
    liked: json["liked"],
    later: json["later"],
    classTypes: List<ClassType>.from(json["class_types"].map((x) => ClassType.fromJson(x))),
    reviews: List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
    user: User.fromJson(json["user"]),
    isLiked: List<dynamic>.from(json["is_liked"].map((x) => x)),
    isLater: List<dynamic>.from(json["is_later"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type": type,
    "user_id": userId,
    "description": description,
    "level": level,
    "timestamp": timestamp.toIso8601String(),
    "duration": duration,
    "image": image,
    "video": video,
    "price": price == null ? null : price,
    "language": language,
    "limited_attendance": limitedAttendance == null ? null : limitedAttendance,
    "class_recurring": classRecurring,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "number_of_occurrences": numberOfOccurrences == null ? null : numberOfOccurrences,
    "ends_at": endsAt.toIso8601String(),
    "status": status,
    "deleted_at": deletedAt,
    "total_watches": totalWatches,
    "communication": communication,
    "video_quality": videoQuality,
    "training_quality": trainingQuality,
    "workout_intensity": workoutIntensity,
    "max_attendees": maxAttendees,
    "likes": likes,
    "location": location,
    "is_chat": isChat,
    "rating": rating,
    "liked": liked,
    "later": later,
    "class_types": List<dynamic>.from(classTypes.map((x) => x.toJson())),
    "reviews": List<dynamic>.from(reviews.map((x) => x.toJson())),
    "user": user.toJson(),
    "is_liked": List<dynamic>.from(isLiked.map((x) => x)),
    "is_later": List<dynamic>.from(isLater.map((x) => x)),
  };
}

class ClassType {
  ClassType({
    required this.id,
    required this.name,
    required this.slug,
    required this.order,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.pivot,
  });

  int id;
  String name;
  String slug;
  int order;
  bool status;
  DateTime createdAt;
  DateTime updatedAt;
  Pivot pivot;

  factory ClassType.fromJson(Map<String, dynamic> json) => ClassType(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    order: json["order"],
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    pivot: Pivot.fromJson(json["pivot"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
    "order": order,
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "pivot": pivot.toJson(),
  };
}

class Pivot {
  Pivot({
    required this.classId,
    required this.categoryId,
  });

  int classId;
  int categoryId;

  factory Pivot.fromJson(Map<String, dynamic> json) => Pivot(
    classId: json["class_id"],
    categoryId: json["category_id"],
  );

  Map<String, dynamic> toJson() => {
    "class_id": classId,
    "category_id": categoryId,
  };
}

class Review {
  Review({
    required this.id,
    required this.reviewableId,
    required this.reviewerId,
    required this.rating,
    required this.comment,
    required this.createdAt,
    required this.reviewableType,
    required this.communication,
    required this.videoQuality,
    required this.trainingQuality,
    required this.workoutIntensity,
  });

  int id;
  int reviewableId;
  int reviewerId;
  dynamic rating;
  String comment;
  DateTime createdAt;
  String reviewableType;
  String communication;
  String videoQuality;
  String trainingQuality;
  String workoutIntensity;

  factory Review.fromJson(Map<String, dynamic> json) => Review(
    id: json["id"],
    reviewableId: json["reviewable_id"],
    reviewerId: json["reviewer_id"],
    rating: json["rating"],
    comment: json["comment"],
    createdAt: DateTime.parse(json["created_at"]),
    reviewableType: json["reviewable_type"],
    communication: json["communication"],
    videoQuality: json["video_quality"] == null ? null : json["video_quality"],
    trainingQuality: json["training_quality"] == null ? null : json["training_quality"],
    workoutIntensity: json["workout_intensity"] == null ? null : json["workout_intensity"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "reviewable_id": reviewableId,
    "reviewer_id": reviewerId,
    "rating": rating,
    "comment": comment,
    "created_at": createdAt.toIso8601String(),
    "reviewable_type": reviewableType,
    "communication": communication,
    "video_quality": videoQuality == null ? null : videoQuality,
    "training_quality": trainingQuality == null ? null : trainingQuality,
    "workout_intensity": workoutIntensity == null ? null : workoutIntensity,
  };
}

class User {
  User({
    required this.id,
    required this.firstName,
    required this.lastName,
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

  int id;
  String firstName;
  String lastName;
  String email;
  String mobile;
  String image;
  DateTime emailVerifiedAt;
  bool status;
  int roleId;
  dynamic deletedAt;
  DateTime createdAt;
  dynamic twoFactorSecret;
  dynamic twoFactorRecoveryCodes;
  DateTime mobileVerifiedAt;
  int mobileVerificationCode;
  String language;
  dynamic passwordResetAt;
  dynamic twoFaCode;
  dynamic twoFaCreatedAt;
  dynamic twoFaConfirmed;
  String height;
  DateTime dateOfBirth;
  int likes;
  bool smsOptIn;
  bool privacyPolicy;
  String ratings;
  dynamic fbId;
  bool isActive;
  dynamic fcmDeviceToken;
  dynamic countryCode;
  bool isTestUser;
  bool liked;
  List<dynamic> isLiked;

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
    mobile: json["mobile"],
    image: json["image"],
    emailVerifiedAt: DateTime.parse(json["email_verified_at"]),
    status: json["status"],
    roleId: json["role_id"],
    deletedAt: json["deleted_at"],
    createdAt: DateTime.parse(json["created_at"]),
    twoFactorSecret: json["two_factor_secret"],
    twoFactorRecoveryCodes: json["two_factor_recovery_codes"],
    mobileVerifiedAt: DateTime.parse(json["mobile_verified_at"]),
    mobileVerificationCode: json["mobile_verification_code"],
    language: json["language"],
    passwordResetAt: json["password_reset_at"],
    twoFaCode: json["two_fa_code"],
    twoFaCreatedAt: json["two_fa_created_at"],
    twoFaConfirmed: json["two_fa_confirmed"],
    height: json["height"],
    dateOfBirth: DateTime.parse(json["date_of_birth"]),
    likes: json["likes"],
    smsOptIn: json["sms_opt_in"],
    privacyPolicy: json["privacy_policy"],
    ratings: json["ratings"],
    fbId: json["fb_id"],
    isActive: json["is_active"],
    fcmDeviceToken: json["fcm_device_token"],
    countryCode: json["country_code"],
    isTestUser: json["is_test_user"],
    liked: json["liked"],
    isLiked: List<dynamic>.from(json["is_liked"].mavp((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "email": email,
    "mobile": mobile,
    "image": image,
    "email_verified_at": emailVerifiedAt.toIso8601String(),
    "status": status,
    "role_id": roleId,
    "deleted_at": deletedAt,
    "created_at": createdAt.toIso8601String(),
    "two_factor_secret": twoFactorSecret,
    "two_factor_recovery_codes": twoFactorRecoveryCodes,
    "mobile_verified_at": mobileVerifiedAt.toIso8601String(),
    "mobile_verification_code": mobileVerificationCode,
    "language": language,
    "password_reset_at": passwordResetAt,
    "two_fa_code": twoFaCode,
    "two_fa_created_at": twoFaCreatedAt,
    "two_fa_confirmed": twoFaConfirmed,
    "height": height,
    "date_of_birth": dateOfBirth.toIso8601String(),
    "likes": likes,
    "sms_opt_in": smsOptIn,
    "privacy_policy": privacyPolicy,
    "ratings": ratings,
    "fb_id": fbId,
    "is_active": isActive,
    "fcm_device_token": fcmDeviceToken,
    "country_code": countryCode,
    "is_test_user": isTestUser,
    "liked": liked,
    "is_liked": List<dynamic>.from(isLiked.map((x) => x)),
  };
}

class Link {
  Link({
    required this.url,
    required this.label,
    required this.active,
  });

  String url;
  String label;
  bool active;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    url: json["url"] == null ? null : json["url"],
    label: json["label"],
    active: json["active"],
  );

  Map<String, dynamic> toJson() => {
    "url": url == null ? null : url,
    "label": label,
    "active": active,
  };
}
