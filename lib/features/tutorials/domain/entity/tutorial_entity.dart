import 'dart:convert';

class TutorialEntity {
  String title;
  String description;
  String type;
  String url;
  String cover;
  String feature;
  String id;
  
  TutorialEntity({
    required this.title,
    required this.description,
    required this.type,
    required this.url,
    required this.cover,
    required this.feature,
    required this.id,
  });


  TutorialEntity copyWith({
    String? title,
    String? description,
    String? type,
    String? url,
    String? cover,
    String? feature,
    String? id,
  }) {
    return TutorialEntity(
      title: title ?? this.title,
      description: description ?? this.description,
      type: type ?? this.type,
      url: url ?? this.url,
      cover: cover ?? this.cover,
      feature: feature ?? this.feature,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'type': type,
      'url': url,
      'cover': cover,
      'feature': feature,
      'id': id,
    };
  }

  factory TutorialEntity.fromMap(Map<String, dynamic> map) {
    return TutorialEntity(
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      type: map['type'] ?? '',
      url: map['url'] ?? '',
      cover: map['cover'] ?? '',
      feature: map['feature'] ?? '',
      id: map['id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TutorialEntity.fromJson(String source) => TutorialEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TutorialEntity(title: $title, description: $description, type: $type, url: $url, cover: $cover, feature: $feature, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is TutorialEntity &&
      other.title == title &&
      other.description == description &&
      other.type == type &&
      other.url == url &&
      other.cover == cover &&
      other.feature == feature &&
      other.id == id;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      description.hashCode ^
      type.hashCode ^
      url.hashCode ^
      cover.hashCode ^
      feature.hashCode ^
      id.hashCode;
  }
}
