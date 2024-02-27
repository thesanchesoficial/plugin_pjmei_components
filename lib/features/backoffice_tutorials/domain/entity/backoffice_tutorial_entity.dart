import 'dart:convert';

class BackofficeTutorialEntity {
  String url;
  String cover;
  String name;
  String description;
  String type;
  String id;
  
  BackofficeTutorialEntity({
    required this.url,
    required this.cover,
    required this.name,
    required this.description,
    required this.type,
    required this.id,
  });

  BackofficeTutorialEntity copyWith({
    String? url,
    String? cover,
    String? name,
    String? description,
    String? type,
    String? id,
  }) {
    return BackofficeTutorialEntity(
      url: url ?? this.url,
      cover: cover ?? this.cover,
      name: name ?? this.name,
      description: description ?? this.description,
      type: type ?? this.type,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'url': url,
      'cover': cover,
      'name': name,
      'description': description,
      'type': type,
      'id': id,
    };
  }

  factory BackofficeTutorialEntity.fromMap(Map<String, dynamic> map) {
    return BackofficeTutorialEntity(
      url: map['url'] ?? '',
      cover: map['cover'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      type: map['type'] ?? '',
      id: map['id'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory BackofficeTutorialEntity.fromJson(String source) => BackofficeTutorialEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BackofficeTutorialEntity(url: $url, cover: $cover, name: $name, description: $description, type: $type, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is BackofficeTutorialEntity &&
      other.url == url &&
      other.cover == cover &&
      other.name == name &&
      other.description == description &&
      other.type == type &&
      other.id == id;
  }

  @override
  int get hashCode {
    return url.hashCode ^
      cover.hashCode ^
      name.hashCode ^
      description.hashCode ^
      type.hashCode ^
      id.hashCode;
  }
}
