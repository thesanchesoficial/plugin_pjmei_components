import 'dart:convert';

class StoryViewEntity {
  
  StoryViewEntity({
    required this.ownerId,
    required this.ownerType,
    required this.cover,
    required this.label,
  });

  factory StoryViewEntity.fromMap(Map<String, dynamic> map) {
    return StoryViewEntity(
      ownerId: map['ownerId'] ?? '',
      ownerType: map['ownerType'] ?? '',
      cover: map['cover'] ?? '',
      label: map['label'] ?? '',
    );
  }

  factory StoryViewEntity.fromJson(String source) => StoryViewEntity.fromMap(json.decode(source));
  String ownerId;
  String ownerType;
  String cover;
  String label;

  StoryViewEntity copyWith({
    String? ownerId,
    String? ownerType,
    String? cover,
    String? label,
  }) {
    return StoryViewEntity(
      ownerId: ownerId ?? this.ownerId,
      ownerType: ownerType ?? this.ownerType,
      cover: cover ?? this.cover,
      label: label ?? this.label,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ownerId': ownerId,
      'ownerType': ownerType,
      'cover': cover,
      'label': label,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'StoryViewEntity(ownerId: $ownerId, ownerType: $ownerType, cover: $cover, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is StoryViewEntity &&
      other.ownerId == ownerId &&
      other.ownerType == ownerType &&
      other.cover == cover &&
      other.label == label;
  }

  @override
  int get hashCode {
    return ownerId.hashCode ^
      ownerType.hashCode ^
      cover.hashCode ^
      label.hashCode;
  }
}
