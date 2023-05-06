class Article{
  final String author;
  final String title;
  final String? description;
  final String urltoImage;
  final String publishedAt;

  Article({
    required this.author,
    required this.title,
    this.description,
    this.urltoImage,
    required this.publishedAt
  });

  factory Article.fromJson(Map<String,dynamic> json){
    return Article(
        author: json['author']==null ? null :json['author'],
        title: json['title']==null ? null :json['title'],
        description: json['description']==null ? null :json['description'],
        urltoImage: json['urltoImage']==null ? null :json['urltoImage'],
        publishedAt: json['publishedAt']==null ? null :json['publishedAt']
    );
  }
}