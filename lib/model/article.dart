class Article {
  final String? author;
  final String title;
  final String? description;
  final String? urltoImage;
  final String? publishedAt;

  Article(
      {this.author,
      required this.title,
      this.description,
      this.urltoImage,
      this.publishedAt});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
        author: json['author'] == null ? null : json['author'],
        title: json['title'] == null ? null : json['title'],
        description: json['description'] == null ? null : json['description'],
        urltoImage: json['urlToImage'] == null ? null : json['urlToImage'],
        publishedAt: json['publishedAt'] == null ? null : json['publishedAt']);
  }
}
