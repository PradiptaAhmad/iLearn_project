class CourseModel {
  String? id;
  String? title;
  String? description;
  String? banner;
  String? video_banner;
  String? price;
  List<Courses>? course;

  CourseModel(
      {this.id,
      this.title,
      this.description,
      this.banner,
      this.price,
      this.video_banner,
      this.course});

  CourseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    banner = json['banner'];
    price = json['price'];
    video_banner = json['video_banner'];
    if (json['course'] != null) {
      course = <Courses>[];
      json['course'].forEach((v) {
        course!.add(new Courses.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['banner'] = this.banner;
    data['video_banner'] = this.video_banner;
    data['price'] = this.price;
    if (this.course != null) {
      data['course'] = this.course!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Courses {
  String? id;
  String? title;
  String? video_link;
  String? description;

  Courses({this.id, this.title, this.video_link});

  Courses.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    video_link = json['video_link'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['video_link'] = this.video_link;
    data['description'] = this.description;
    return data;
  }
}
