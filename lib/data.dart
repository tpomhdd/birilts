
class active_courses {
  bool? status;
  Data? data;
  String? message;

  active_courses({this.status, this.data, this.message});

  active_courses.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  User? user;
  String? token;

  Data({this.user, this.token});

  Data.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class User {
  int? id;
  String? firstName;
  String? lastName;
  String? firstNameAr;
  String? lastNameAr;
  String? phone;
  String? address;
  String? workPlace;
  String? gender;
  String? birthday;
  String? nationality;
  String? email;
  int? blocked;
  int? isHr;
  int? profile;
  Null? lastOS;
  Null? deletedAt;
  Null? fatherNameEn;
  Null? fatherNameAr;
  Null? earilerCourse;
  Null? langId;
  Null? phoneC;
  Null? telegram;
  String? createdAt;
  String? updatedAt;
  List<ActiveCourses>? activeCourses;
  List<Null>? newCourses;
  List<PastCourses>? pastCourses;
  List<ToOpenCourses>? toOpenCourses;

  User(
      {this.id,
        this.firstName,
        this.lastName,
        this.firstNameAr,
        this.lastNameAr,
        this.phone,
        this.address,
        this.workPlace,
        this.gender,
        this.birthday,
        this.nationality,
        this.email,
        this.blocked,
        this.isHr,
        this.profile,
        this.lastOS,
        this.deletedAt,
        this.fatherNameEn,
        this.fatherNameAr,
        this.earilerCourse,
        this.langId,
        this.phoneC,
        this.telegram,
        this.createdAt,
        this.updatedAt,
        this.activeCourses,
        this.newCourses,
        this.pastCourses,
        this.toOpenCourses});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    firstNameAr = json['first_name_ar'];
    lastNameAr = json['last_name_ar'];
    phone = json['phone'];
    address = json['Address'];
    workPlace = json['work_place'];
    gender = json['gender'];
    birthday = json['birthday'];
    nationality = json['nationality'];
    email = json['email'];
    blocked = json['blocked'];
    isHr = json['is_hr'];
    profile = json['profile'];
    lastOS = json['lastOS'];
    deletedAt = json['deleted_at'];
    fatherNameEn = json['father_name_en'];
    fatherNameAr = json['father_name_ar'];
    earilerCourse = json['eariler_course'];
    langId = json['lang_id'];
    phoneC = json['phone_c'];
    telegram = json['telegram'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['active_courses'] != null) {
      activeCourses = <ActiveCourses>[];
      json['active_courses'].forEach((v) {
        activeCourses!.add(new ActiveCourses.fromJson(v));
      });
    }

    if (json['past_courses'] != null) {
      pastCourses = <PastCourses>[];
      json['past_courses'].forEach((v) {
        pastCourses!.add(new PastCourses.fromJson(v));
      });
    }
    if (json['to_open_courses'] != null) {
      toOpenCourses = <ToOpenCourses>[];
      json['to_open_courses'].forEach((v) {
        toOpenCourses!.add(new ToOpenCourses.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['first_name_ar'] = this.firstNameAr;
    data['last_name_ar'] = this.lastNameAr;
    data['phone'] = this.phone;
    data['Address'] = this.address;
    data['work_place'] = this.workPlace;
    data['gender'] = this.gender;
    data['birthday'] = this.birthday;
    data['nationality'] = this.nationality;
    data['email'] = this.email;
    data['blocked'] = this.blocked;
    data['is_hr'] = this.isHr;
    data['profile'] = this.profile;
    data['lastOS'] = this.lastOS;
    data['deleted_at'] = this.deletedAt;
    data['father_name_en'] = this.fatherNameEn;
    data['father_name_ar'] = this.fatherNameAr;
    data['eariler_course'] = this.earilerCourse;
    data['lang_id'] = this.langId;
    data['phone_c'] = this.phoneC;
    data['telegram'] = this.telegram;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.activeCourses != null) {
      data['active_courses'] =
          this.activeCourses!.map((v) => v.toJson()).toList();
    }


    return data;
  }
}

class ActiveCourses {
  int? id;
  int? ageGroupId;
  String? cid;
  Null? courseNumber;
  int? levelId;
  String? studentNumber;
  int? studentNumberV;
  String? lessonsNumber;
  int? lessonsNumberV;
  String? courseCost;
  String? bookCost;
  int? costV;
  String? startDate;
  String? endDate;
  int? endDateV;
  int? visible;
  String? createdAt;
  String? updatedAt;
  String? teacher;
  Null? courseName;
  Null? units;
  Null? deletedAt;
  String? description;
  Pivot? pivot;
  Level? level;
  List<Lessons>? lessons;

  ActiveCourses(
      {this.id,
        this.ageGroupId,
        this.cid,
        this.courseNumber,
        this.levelId,
        this.studentNumber,
        this.studentNumberV,
        this.lessonsNumber,
        this.lessonsNumberV,
        this.courseCost,
        this.bookCost,
        this.costV,
        this.startDate,
        this.endDate,
        this.endDateV,
        this.visible,
        this.createdAt,
        this.updatedAt,
        this.teacher,
        this.courseName,
        this.units,
        this.deletedAt,
        this.description,
        this.pivot,
        this.level,
        this.lessons});

  ActiveCourses.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ageGroupId = json['age_group_id'];
    cid = json['cid'];
    courseNumber = json['course_number'];
    levelId = json['level_id'];
    studentNumber = json['student_number'];
    studentNumberV = json['student_number_v'];
    lessonsNumber = json['lessons_number'];
    lessonsNumberV = json['lessons_number_v'];
    courseCost = json['course_cost'];
    bookCost = json['book_cost'];
    costV = json['cost_v'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    endDateV = json['end_date_v'];
    visible = json['visible'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    teacher = json['teacher'];
    courseName = json['course_name'];
    units = json['units'];
    deletedAt = json['deleted_at'];
    description = json['description'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
    level = json['level'] != null ? new Level.fromJson(json['level']) : null;
    if (json['lessons'] != null) {
      lessons = <Lessons>[];
      json['lessons'].forEach((v) {
        lessons!.add(new Lessons.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['age_group_id'] = this.ageGroupId;
    data['cid'] = this.cid;
    data['course_number'] = this.courseNumber;
    data['level_id'] = this.levelId;
    data['student_number'] = this.studentNumber;
    data['student_number_v'] = this.studentNumberV;
    data['lessons_number'] = this.lessonsNumber;
    data['lessons_number_v'] = this.lessonsNumberV;
    data['course_cost'] = this.courseCost;
    data['book_cost'] = this.bookCost;
    data['cost_v'] = this.costV;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['end_date_v'] = this.endDateV;
    data['visible'] = this.visible;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['teacher'] = this.teacher;
    data['course_name'] = this.courseName;
    data['units'] = this.units;
    data['deleted_at'] = this.deletedAt;
    data['description'] = this.description;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    if (this.level != null) {
      data['level'] = this.level!.toJson();
    }
    if (this.lessons != null) {
      data['lessons'] = this.lessons!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pivot {
  int? userId;
  int? courseId;
  Null? verbal;
  Null? writing;
  Null? attendance;
  Null? participation;
  Null? homework;

  Pivot(
      {this.userId,
        this.courseId,
        this.verbal,
        this.writing,
        this.attendance,
        this.participation,
        this.homework});

  Pivot.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    courseId = json['course_id'];
    verbal = json['verbal'];
    writing = json['writing'];
    attendance = json['attendance'];
    participation = json['participation'];
    homework = json['homework'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['course_id'] = this.courseId;
    data['verbal'] = this.verbal;
    data['writing'] = this.writing;
    data['attendance'] = this.attendance;
    data['participation'] = this.participation;
    data['homework'] = this.homework;
    return data;
  }
}

class Level {
  int? id;
  int? langId;
  String? name;
  Null? age;
  Lang? lang;

  Level({this.id, this.langId, this.name, this.age, this.lang});

  Level.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    langId = json['lang_id'];
    name = json['name'];
    age = json['age'];
    lang = json['lang'] != null ? new Lang.fromJson(json['lang']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['lang_id'] = this.langId;
    data['name'] = this.name;
    data['age'] = this.age;
    if (this.lang != null) {
      data['lang'] = this.lang!.toJson();
    }
    return data;
  }
}

class Lang {
  int? id;
  String? lang;
  String? langAr;

  Lang({this.id, this.lang, this.langAr});

  Lang.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    lang = json['lang'];
    langAr = json['lang_ar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['lang'] = this.lang;
    data['lang_ar'] = this.langAr;
    return data;
  }
}

class Lessons {
  int? id;
  String? date;
  String? from;
  String? to;
  int? courseId;
  int? isCanceled;
  String? createdAt;
  String? updatedAt;

  Lessons(
      {this.id,
        this.date,
        this.from,
        this.to,
        this.courseId,
        this.isCanceled,
        this.createdAt,
        this.updatedAt});

  Lessons.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    from = json['from'];
    to = json['to'];
    courseId = json['course_id'];
    isCanceled = json['is_canceled'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['from'] = this.from;
    data['to'] = this.to;
    data['course_id'] = this.courseId;
    data['is_canceled'] = this.isCanceled;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class PastCourses {
  int? id;
  int? ageGroupId;
  String? cid;
  Null? courseNumber;
  int? levelId;
  String? studentNumber;
  int? studentNumberV;
  String? lessonsNumber;
  int? lessonsNumberV;
  String? courseCost;
  String? bookCost;
  int? costV;
  String? startDate;
  String? endDate;
  int? endDateV;
  int? visible;
  String? createdAt;
  String? updatedAt;
  String? teacher;
  Null? courseName;
  Null? units;
  Null? deletedAt;
  String? description;
  Pivot? pivot;
  Level? level;

  PastCourses(
      {this.id,
        this.ageGroupId,
        this.cid,
        this.courseNumber,
        this.levelId,
        this.studentNumber,
        this.studentNumberV,
        this.lessonsNumber,
        this.lessonsNumberV,
        this.courseCost,
        this.bookCost,
        this.costV,
        this.startDate,
        this.endDate,
        this.endDateV,
        this.visible,
        this.createdAt,
        this.updatedAt,
        this.teacher,
        this.courseName,
        this.units,
        this.deletedAt,
        this.description,
        this.pivot,
        this.level});

  PastCourses.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ageGroupId = json['age_group_id'];
    cid = json['cid'];
    courseNumber = json['course_number'];
    levelId = json['level_id'];
    studentNumber = json['student_number'];
    studentNumberV = json['student_number_v'];
    lessonsNumber = json['lessons_number'];
    lessonsNumberV = json['lessons_number_v'];
    courseCost = json['course_cost'];
    bookCost = json['book_cost'];
    costV = json['cost_v'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    endDateV = json['end_date_v'];
    visible = json['visible'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    teacher = json['teacher'];
    courseName = json['course_name'];
    units = json['units'];
    deletedAt = json['deleted_at'];
    description = json['description'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
    level = json['level'] != null ? new Level.fromJson(json['level']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['age_group_id'] = this.ageGroupId;
    data['cid'] = this.cid;
    data['course_number'] = this.courseNumber;
    data['level_id'] = this.levelId;
    data['student_number'] = this.studentNumber;
    data['student_number_v'] = this.studentNumberV;
    data['lessons_number'] = this.lessonsNumber;
    data['lessons_number_v'] = this.lessonsNumberV;
    data['course_cost'] = this.courseCost;
    data['book_cost'] = this.bookCost;
    data['cost_v'] = this.costV;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['end_date_v'] = this.endDateV;
    data['visible'] = this.visible;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['teacher'] = this.teacher;
    data['course_name'] = this.courseName;
    data['units'] = this.units;
    data['deleted_at'] = this.deletedAt;
    data['description'] = this.description;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    if (this.level != null) {
      data['level'] = this.level!.toJson();
    }
    return data;
  }
}

class ToOpenCourses {
  int? id;
  int? ageGroupId;
  String? cid;
  Null? courseNumber;
  int? levelId;
  String? studentNumber;
  int? studentNumberV;
  String? lessonsNumber;
  int? lessonsNumberV;
  String? courseCost;
  String? bookCost;
  int? costV;
  String? startDate;
  String? endDate;
  int? endDateV;
  int? visible;
  String? createdAt;
  String? updatedAt;
  String? teacher;
  Null? courseName;
  Null? units;
  Null? deletedAt;
  String? description;
  Pivot? pivot;

  ToOpenCourses(
      {this.id,
        this.ageGroupId,
        this.cid,
        this.courseNumber,
        this.levelId,
        this.studentNumber,
        this.studentNumberV,
        this.lessonsNumber,
        this.lessonsNumberV,
        this.courseCost,
        this.bookCost,
        this.costV,
        this.startDate,
        this.endDate,
        this.endDateV,
        this.visible,
        this.createdAt,
        this.updatedAt,
        this.teacher,
        this.courseName,
        this.units,
        this.deletedAt,
        this.description,
        this.pivot});

  ToOpenCourses.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ageGroupId = json['age_group_id'];
    cid = json['cid'];
    courseNumber = json['course_number'];
    levelId = json['level_id'];
    studentNumber = json['student_number'];
    studentNumberV = json['student_number_v'];
    lessonsNumber = json['lessons_number'];
    lessonsNumberV = json['lessons_number_v'];
    courseCost = json['course_cost'];
    bookCost = json['book_cost'];
    costV = json['cost_v'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    endDateV = json['end_date_v'];
    visible = json['visible'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    teacher = json['teacher'];
    courseName = json['course_name'];
    units = json['units'];
    deletedAt = json['deleted_at'];
    description = json['description'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['age_group_id'] = this.ageGroupId;
    data['cid'] = this.cid;
    data['course_number'] = this.courseNumber;
    data['level_id'] = this.levelId;
    data['student_number'] = this.studentNumber;
    data['student_number_v'] = this.studentNumberV;
    data['lessons_number'] = this.lessonsNumber;
    data['lessons_number_v'] = this.lessonsNumberV;
    data['course_cost'] = this.courseCost;
    data['book_cost'] = this.bookCost;
    data['cost_v'] = this.costV;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['end_date_v'] = this.endDateV;
    data['visible'] = this.visible;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['teacher'] = this.teacher;
    data['course_name'] = this.courseName;
    data['units'] = this.units;
    data['deleted_at'] = this.deletedAt;
    data['description'] = this.description;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    return data;
  }
}