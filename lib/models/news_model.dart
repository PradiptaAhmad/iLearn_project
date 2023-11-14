class NewsModel {
  String? id;
  String? title;
  String? news_content;
  String? banner;
  String? author_name;
  String? date;
  String? author_picture;

  NewsModel({
    this.id,
    this.title,
    this.banner,
    this.date,
    this.news_content,
    this.author_name,
    this.author_picture,
  });

  NewsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    news_content = json['news_content'];
    banner = json['banner'];
    date = json['date'];
    author_name = json['author_name'];
    author_picture = json['author_picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id!;
    data['title'] = this.title!;
    data['banner'] = this.banner!;
    data['date'] = this.date!;
    data['news_content'] = this.news_content!;
    data['author_name'] = this.author_name!;
    data['author_picture'] = this.author_picture!;
    return data;
  }
}
