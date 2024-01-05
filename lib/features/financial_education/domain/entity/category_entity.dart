import 'dart:convert';

import 'video_entity.dart';

class CategoryFinancialEducationEntity {

  CategoryFinancialEducationEntity({
    this.id,
    this.cover,
    this.title,
    this.description,
    this.videos,
    this.tags,
    this.index,
  });

  factory CategoryFinancialEducationEntity.fromMap(Map<String, dynamic> map) {
    return CategoryFinancialEducationEntity(
      id: map['id'] ?? '',
      cover: map['cover'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      videos: map['videos'] != null ? List<VideoFinancialEducationEntity>.from(
          map['videos']?.map((x) => VideoFinancialEducationEntity.fromMap(x))) : null,
      tags: List<String>.from(map['tags']),
      index: map['index']?.toInt() ?? 0,
    );
  }

  factory CategoryFinancialEducationEntity.fromJson(String source) =>
      CategoryFinancialEducationEntity.fromMap(json.decode(source));
  String? id;
  String? cover;
  String? title;
  String? description;
  List<VideoFinancialEducationEntity>? videos;
  List<String>? tags;
  int? index;

  CategoryFinancialEducationEntity copyWith({
    String? id,
    String? cover,
    String? title,
    String? description,
    List<VideoFinancialEducationEntity>? videos,
    List<String>? tags,
    int? index,
  }) {
    return CategoryFinancialEducationEntity(
      id: id ?? this.id,
      cover: cover ?? this.cover,
      title: title ?? this.title,
      description: description ?? this.description,
      videos: videos ?? this.videos,
      tags: tags ?? this.tags,
      index: index ?? this.index,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'cover': cover,
      'title': title,
      'description': description,
      'videos': videos?.map((x) => x.toMap()).toList(),
      'tags': tags,
      'index': index,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'CategoryFinancialEducationEntity(id: $id, cover: $cover, title: $title, description: $description, videos: $videos, tags: $tags, index: $index)';
  }
}
