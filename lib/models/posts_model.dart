// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PostsModel {
  final String title;
  final String body;
  final int userId;
  final int id;
  PostsModel({
    required this.title,
    required this.body,
    required this.userId,
    required this.id,
  });

  PostsModel copyWith({
    String? title,
    String? body,
    int? userId,
    int? id,
  }) {
    return PostsModel(
      title: title ?? this.title,
      body: body ?? this.body,
      userId: userId ?? this.userId,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'body': body,
      'userId': userId,
      'id': id,
    };
  }

  factory PostsModel.fromMap(Map<String, dynamic> map) {
    return PostsModel(
      title: map['title'] as String,
      body: map['body'] as String,
      userId: map['userId'] as int,
      id: map['id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory PostsModel.fromJson(String source) => PostsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PostsModel(title: $title, body: $body, userId: $userId, id: $id)';
  }

  @override
  bool operator ==(covariant PostsModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.body == body &&
      other.userId == userId &&
      other.id == id;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      body.hashCode ^
      userId.hashCode ^
      id.hashCode;
  }
}
