import 'dart:convert';

Course courseFromJson(String str) => Course.fromJson(json.decode(str));

String courseToJson(Course data) => json.encode(data.toJson());

class Course {
  int? status;
  String? message;
  Data? data;

  Course({
    this.status,
    this.message,
    this.data,
  });

  factory Course.fromJson(Map<String, dynamic> json) => Course(
    status: json["status"],
    message: json["message"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data?.toJson(),
  };
}

class Data {
  Userdata? userdata;
  List<Subject>? subjects;
  List<dynamic>? pyqExams;
  List<dynamic>? upcomingExams;
  String? syllabus;
  String? practiceLink;

  Data({
    this.userdata,
    this.subjects,
    this.pyqExams,
    this.upcomingExams,
    this.syllabus,
    this.practiceLink,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    userdata: json["userdata"] == null ? null : Userdata.fromJson(json["userdata"]),
    subjects: json["subjects"] == null ? [] : List<Subject>.from(json["subjects"]!.map((x) => Subject.fromJson(x))),
    pyqExams: json["pyq_exams"] == null ? [] : List<dynamic>.from(json["pyq_exams"]!.map((x) => x)),
    upcomingExams: json["upcoming_exams"] == null ? [] : List<dynamic>.from(json["upcoming_exams"]!.map((x) => x)),
    syllabus: json["syllabus"],
    practiceLink: json["practice_link"],
  );

  Map<String, dynamic> toJson() => {
    "userdata": userdata?.toJson(),
    "subjects": subjects == null ? [] : List<dynamic>.from(subjects!.map((x) => x.toJson())),
    "pyq_exams": pyqExams == null ? [] : List<dynamic>.from(pyqExams!.map((x) => x)),
    "upcoming_exams": upcomingExams == null ? [] : List<dynamic>.from(upcomingExams!.map((x) => x)),
    "syllabus": syllabus,
    "practice_link": practiceLink,
  };
}

class Subject {
  String? id;
  String? title;
  String? courseId;
  String? levelId;
  String? order;
  String? thumbnail;
  String? background;
  String? icon;
  String? free;
  dynamic instructorId;

  Subject({
    this.id,
    this.title,
    this.courseId,
    this.levelId,
    this.order,
    this.thumbnail,
    this.background,
    this.icon,
    this.free,
    this.instructorId,
  });

  factory Subject.fromJson(Map<String, dynamic> json) => Subject(
    id: json["id"],
    title: json["title"],
    courseId: json["course_id"],
    levelId: json["level_id"],
    order: json["order"],
    thumbnail: json["thumbnail"],
    background: json["background"],
    icon: json["icon"],
    free: json["free"],
    instructorId: json["instructor_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "course_id": courseId,
    "level_id": levelId,
    "order": order,
    "thumbnail": thumbnail,
    "background": background,
    "icon": icon,
    "free": free,
    "instructor_id": instructorId,
  };
}

class Userdata {
  String? id;
  String? firstName;
  String? lastName;
  String? phone;
  String? countryCode;
  dynamic phoneSecondary;
  String? userEmail;
  String? email;
  String? gender;
  String? place;
  String? roleId;
  String? roleLabel;
  String? deviceId;
  String? status;
  String? courseId;
  String? courseName;
  String? courseType;
  String? image;
  dynamic androidVersion;
  String? deviceIdMessage;
  String? noCourseText;
  String? noCourseImage;
  String? contactEmail;
  String? contactPhone;
  String? contactWhatsapp;
  String? contactAddress;
  String? contactAbout;
  String? zoomId;
  String? zoomPassword;
  String? zoomApiKey;
  String? zoomSecretKey;
  String? zoomWebDomain;
  String? token;
  String? privacyPolicy;
  String? privacyPolicyText;
  int? coins;

  Userdata({
    this.id,
    this.firstName,
    this.lastName,
    this.phone,
    this.countryCode,
    this.phoneSecondary,
    this.userEmail,
    this.email,
    this.gender,
    this.place,
    this.roleId,
    this.roleLabel,
    this.deviceId,
    this.status,
    this.courseId,
    this.courseName,
    this.courseType,
    this.image,
    this.androidVersion,
    this.deviceIdMessage,
    this.noCourseText,
    this.noCourseImage,
    this.contactEmail,
    this.contactPhone,
    this.contactWhatsapp,
    this.contactAddress,
    this.contactAbout,
    this.zoomId,
    this.zoomPassword,
    this.zoomApiKey,
    this.zoomSecretKey,
    this.zoomWebDomain,
    this.token,
    this.privacyPolicy,
    this.privacyPolicyText,
    this.coins,
  });

  factory Userdata.fromJson(Map<String, dynamic> json) => Userdata(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    phone: json["phone"],
    countryCode: json["country_code"],
    phoneSecondary: json["phone_secondary"],
    userEmail: json["user_email"],
    email: json["email"],
    gender: json["gender"],
    place: json["place"],
    roleId: json["role_id"],
    roleLabel: json["role_label"],
    deviceId: json["device_id"],
    status: json["status"],
    courseId: json["course_id"],
    courseName: json["course_name"],
    courseType: json["course_type"],
    image: json["image"],
    androidVersion: json["android_version"],
    deviceIdMessage: json["device_id_message"],
    noCourseText: json["no_course_text"],
    noCourseImage: json["no_course_image"],
    contactEmail: json["contact_email"],
    contactPhone: json["contact_phone"],
    contactWhatsapp: json["contact_whatsapp"],
    contactAddress: json["contact_address"],
    contactAbout: json["contact_about"],
    zoomId: json["zoom_id"],
    zoomPassword: json["zoom_password"],
    zoomApiKey: json["zoom_api_key"],
    zoomSecretKey: json["zoom_secret_key"],
    zoomWebDomain: json["zoom_web_domain"],
    token: json["token"],
    privacyPolicy: json["privacy_policy"],
    privacyPolicyText: json["privacy_policy_text"],
    coins: json["coins"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "phone": phone,
    "country_code": countryCode,
    "phone_secondary": phoneSecondary,
    "user_email": userEmail,
    "email": email,
    "gender": gender,
    "place": place,
    "role_id": roleId,
    "role_label": roleLabel,
    "device_id": deviceId,
    "status": status,
    "course_id": courseId,
    "course_name": courseName,
    "course_type": courseType,
    "image": image,
    "android_version": androidVersion,
    "device_id_message": deviceIdMessage,
    "no_course_text": noCourseText,
    "no_course_image": noCourseImage,
    "contact_email": contactEmail,
    "contact_phone": contactPhone,
    "contact_whatsapp": contactWhatsapp,
    "contact_address": contactAddress,
    "contact_about": contactAbout,
    "zoom_id": zoomId,
    "zoom_password": zoomPassword,
    "zoom_api_key": zoomApiKey,
    "zoom_secret_key": zoomSecretKey,
    "zoom_web_domain": zoomWebDomain,
    "token": token,
    "privacy_policy": privacyPolicy,
    "privacy_policy_text": privacyPolicyText,
    "coins": coins,
  };
}
