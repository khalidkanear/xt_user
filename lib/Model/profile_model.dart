class ProfileModel {
  String? id;
  String? image;
  String? fullName;
  String? isActive;
  String? bio;
  String? mobile;
  String? address;
  String? city;
  String? country;
  String? email;
  String? gender;
  String? dateOfBirth;
  String? height;
  String? heightUnits;
  String? timezone;

  ProfileModel(
      {this.id,
        this.image,
        this.fullName,
        this.isActive,
        this.bio,
        this.mobile,
        this.address,
        this.city,
        this.country,
        this.email,
        this.gender,
        this.dateOfBirth,
        this.height,
        this.heightUnits,
        this.timezone});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    image = json['image'].toString();
    fullName = json['full_name'].toString();
    isActive = json['is_active'].toString();
    bio = json['bio'].toString();
    mobile = json['mobile'].toString();
    address = json['address'].toString();
    city = json['city'].toString();
    country = json['country'].toString();
    email = json['email'].toString();
    gender = json['gender'].toString();
    dateOfBirth = json['date_of_birth'].toString();
    height = json['height'].toString();
    heightUnits = json['height_units'].toString();
    timezone = json['timezone'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['full_name'] = this.fullName;
    data['is_active'] = this.isActive;
    data['bio'] = this.bio;
    data['mobile'] = this.mobile;
    data['address'] = this.address;
    data['city'] = this.city;
    data['country'] = this.country;
    data['email'] = this.email;
    data['gender'] = this.gender;
    data['date_of_birth'] = this.dateOfBirth;
    data['height'] = this.height;
    data['height_units'] = this.heightUnits;
    data['timezone'] = this.timezone;
    return data;
  }
}