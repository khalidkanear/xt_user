import 'dart:convert';

Prerecorded prerecordedFromJson(String str) => Prerecorded.fromJson(json.decode(str));

String prerecordedToJson(Prerecorded data) => json.encode(data.toJson());

class Prerecorded {
  Prerecorded({
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
  String nextPageUrl;
  String path;
  String perPage;
  dynamic prevPageUrl;
  int to;
  int total;

  factory Prerecorded.fromJson(Map<String, dynamic> json) => Prerecorded(
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
  Type type;
  int userId;
  String description;
  Level level;
  DateTime timestamp;
  String duration;
  String image;
  String video;
  int price;
  DatumLanguage language;
  dynamic limitedAttendance;
  dynamic classRecurring;
  dynamic numberOfOccurrences;
  dynamic endsAt;
  bool status;
  dynamic deletedAt;
  int totalWatches;
  String communication;
  String videoQuality;
  String trainingQuality;
  String workoutIntensity;
  dynamic maxAttendees;
  int likes;
  dynamic location;
  bool isChat;
  dynamic rating;
  bool liked;
  bool later;
  List<ClassType> classTypes;
  List<dynamic> reviews;
  User user;
  List<dynamic> isLiked;
  List<IsLater> isLater;

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
    price: json["price"],
    language: json["language"],
    limitedAttendance: json["limited_attendance"],
    classRecurring: json["class_recurring"],
    numberOfOccurrences: json["number_of_occurrences"],
    endsAt: json["ends_at"],
    status: json["status"],
    deletedAt: json["deleted_at"],
    totalWatches: json["total_watches"],
    communication: json["communication"],
    videoQuality: json["video_quality"],
    trainingQuality: json["training_quality"],
    workoutIntensity: json["workout_intensity"],
    maxAttendees: json["max_attendees"],
    likes: json["likes"] == null ? null : json["likes"],
    location: json["location"],
    isChat: json["is_chat"],
    rating: json["rating"],
    liked: json["liked"],
    later: json["later"],
    classTypes: List<ClassType>.from(json["class_types"].map((x) => ClassType.fromJson(x))),
    reviews: List<dynamic>.from(json["reviews"].map((x) => x)),
    user: User.fromJson(json["user"]),
    isLiked: List<dynamic>.from(json["is_liked"].map((x) => x)),
    isLater: List<IsLater>.from(json["is_later"].map((x) => IsLater.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type": typeValues.reverse[type],
    "user_id": userId,
    "description": description,
    "level": levelValues.reverse[level],
    "timestamp": timestamp.toIso8601String(),
    "duration": duration,
    "image": image,
    "video": video,
    "price": price,
    "language": datumLanguageValues.reverse[language],
    "limited_attendance": limitedAttendance,
    "class_recurring": classRecurring,
    "number_of_occurrences": numberOfOccurrences,
    "ends_at": endsAt,
    "status": status,
    "deleted_at": deletedAt,
    "total_watches": totalWatches,
    "communication": communication,
    "video_quality": videoQuality,
    "training_quality": trainingQuality,
    "workout_intensity": workoutIntensity,
    "max_attendees": maxAttendees,
    "likes": likes == null ? null : likes,
    "location": location,
    "is_chat": isChat,
    "rating": rating,
    "liked": liked,
    "later": later,
    "class_types": List<dynamic>.from(classTypes.map((x) => x.toJson())),
    "reviews": List<dynamic>.from(reviews.map((x) => x)),
    "user": user.toJson(),
    "is_liked": List<dynamic>.from(isLiked.map((x) => x)),
    "is_later": List<dynamic>.from(isLater.map((x) => x.toJson())),
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
  Name name;
  Slug slug;
  int order;
  bool status;
  dynamic createdAt;
  dynamic updatedAt;
  Pivot pivot;

  factory ClassType.fromJson(Map<String, dynamic> json) => ClassType(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    order: json["order"],
    status: json["status"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
    pivot: Pivot.fromJson(json["pivot"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": nameValues.reverse[name],
    "slug": slugValues.reverse[slug],
    "order": order,
    "status": status,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "pivot": pivot.toJson(),
  };
}

enum Name { CYCLINGG }

final nameValues = EnumValues({
  "Cyclingg": Name.CYCLINGG
});

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

enum Slug { CYCLINGG }

final slugValues = EnumValues({
  "cyclingg": Slug.CYCLINGG
});

class IsLater {
  IsLater({
    required this.likeableId,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.likeableType,
    required this.isLater,
  });

  int likeableId;
  int userId;
  DateTime createdAt;
  DateTime updatedAt;
  int id;
  String likeableType;
  bool isLater;

  factory IsLater.fromJson(Map<String, dynamic> json) => IsLater(
    likeableId: json["likeable_id"],
    userId: json["user_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    id: json["id"],
    likeableType: json["likeable_type"],
    isLater: json["is_later"],
  );

  Map<String, dynamic> toJson() => {
    "likeable_id": likeableId,
    "user_id": userId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "id": id,
    "likeable_type": likeableType,
    "is_later": isLater,
  };
}

enum DatumLanguage { ENGLISH }

final datumLanguageValues = EnumValues({
  "English": DatumLanguage.ENGLISH
});

enum Level { INTERMEDIATE }

final levelValues = EnumValues({
  "intermediate": Level.INTERMEDIATE
});

enum Type { PRERECORDED }

final typeValues = EnumValues({
  "prerecorded": Type.PRERECORDED
});

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
  dynamic twoFactorSecret;
  dynamic twoFactorRecoveryCodes;
  DateTime mobileVerifiedAt;
  int mobileVerificationCode;
  UserLanguage language;
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
    twoFactorSecret: json["two_factor_secret"],
    twoFactorRecoveryCodes: json["two_factor_recovery_codes"],
    mobileVerifiedAt: DateTime.parse(json["mobile_verified_at"]),
    mobileVerificationCode: json["mobile_verification_code"],
    language: json["language"],
    passwordResetAt: json["password_reset_at"],
    twoFaCode: json["two_fa_code"],
    twoFaCreatedAt: json["two_fa_created_at"],
    twoFaConfirmed: json["two_fa_confirmed"],
    height: json["height"] == null ? null : json["height"],
    dateOfBirth: json["date_of_birth"] == null ? null : json["date_of_birth"],
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
    isLiked: List<dynamic>.from(json["is_liked"].map((x) => x)),
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
    "two_factor_secret": twoFactorSecret,
    "two_factor_recovery_codes": twoFactorRecoveryCodes,
    "mobile_verified_at": mobileVerifiedAt.toIso8601String(),
    "mobile_verification_code": mobileVerificationCode,
    "language": userLanguageValues.reverse[language],
    "password_reset_at": passwordResetAt,
    "two_fa_code": twoFaCode,
    "two_fa_created_at": twoFaCreatedAt,
    "two_fa_confirmed": twoFaConfirmed,
    "height": height == null ? null : height,
    "date_of_birth": dateOfBirth == null ? null : dateOfBirth.toIso8601String(),
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

enum UserLanguage { EN }

final userLanguageValues = EnumValues({
  "en": UserLanguage.EN
});

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

class EnumValues<T> {
 late Map<String, T> map;
 late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
