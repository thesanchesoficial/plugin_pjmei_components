import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'video_session_entity.dart';

class VideoFinancialEducationEntity {

  VideoFinancialEducationEntity({
    this.id,
    this.url,
    this.article,
    this.cover,
    this.title,
    this.description,
    this.aspectRatio,
    this.index,
    this.categoryId,
    this.session,
  });

  factory VideoFinancialEducationEntity.fromMap(Map<String, dynamic> map) {
    return VideoFinancialEducationEntity(
      id: map['id'],
      url: map['url'] ?? '',
      article: map['article'] ?? '',
      cover: map['cover'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      aspectRatio: map['aspectRatio'] ?? 16 / 9,
      index: map['index']?.toInt() ?? 0,
      categoryId: map['categoryId'] ?? '',
      session: map['session'] == null
          ? []
          : List<VideoSessionFinancialEducationEntity>.from(
              map['session']?.map((x) => VideoSessionFinancialEducationEntity.fromMap(x))),
    );
  }

  factory VideoFinancialEducationEntity.fromJson(String source) => VideoFinancialEducationEntity.fromMap(json.decode(source));
  String? id;
  String? url;
  String? article;
  String? cover;
  String? title;
  String? description;
  num? aspectRatio;
  int? index;
  String? categoryId;
  List<VideoSessionFinancialEducationEntity>? session;

  VideoFinancialEducationEntity copyWith({
    String? id,
    String? url,
    String? article,
    String? cover,
    String? title,
    String? description,
    num? aspectRatio,
    int? index,
    String? categoryId,
    List<VideoSessionFinancialEducationEntity>? session,
  }) {
    return VideoFinancialEducationEntity(
      id: id ?? this.id,
      url: url ?? this.url,
      article: article ?? this.article,
      cover: cover ?? this.cover,
      title: title ?? this.title,
      description: description ?? this.description,
      aspectRatio: aspectRatio ?? this.aspectRatio,
      index: index ?? this.index,
      categoryId: categoryId ?? this.categoryId,
      session: session ?? this.session,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'url': url,
      'article': article,
      'cover': cover,
      'title': title,
      'description': description,
      'aspectRatio': aspectRatio,
      'index': index,
      'categoryId': categoryId,
      'session': session?.map((x) => x.toMap()).toList(),
    };
  }

  String toJson() => json.encode(toMap());


  @override
  String toString() {
    return 'VideoFinancialEducationEntity(id: $id, url: $url, article: $article, cover: $cover, title: $title, description: $description, aspectRatio: $aspectRatio, index: $index, categoryId: $categoryId, session: $session)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is VideoFinancialEducationEntity &&
      other.id == id &&
      other.url == url &&
      other.article == article &&
      other.cover == cover &&
      other.title == title &&
      other.description == description &&
      other.aspectRatio == aspectRatio &&
      other.index == index &&
      other.categoryId == categoryId &&
      listEquals(other.session, session);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      url.hashCode ^
      article.hashCode ^
      cover.hashCode ^
      title.hashCode ^
      description.hashCode ^
      aspectRatio.hashCode ^
      index.hashCode ^
      categoryId.hashCode ^
      session.hashCode;
  }
}
