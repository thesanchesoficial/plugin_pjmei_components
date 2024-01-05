import 'dart:convert';

class StoryItemEntity {

  StoryItemEntity({
    required this.content,
    required this.type,
    this.description,
    required this.storyView,
  });

  factory StoryItemEntity.fromMap(Map<String, dynamic> map) {
    return StoryItemEntity(
      content: map['content'] ?? '',
      type: map['type'] ?? '',
      description: map['description'],
      storyView: map['storyView'] ?? '',
    );
  }

  factory StoryItemEntity.fromJson(String source) => StoryItemEntity.fromMap(json.decode(source));
  final String content;
  final String type;
  final String? description;
  final String storyView;

  StoryItemEntity copyWith({
    String? content,
    String? type,
    String? description,
    String? storyView,
  }) {
    return StoryItemEntity(
      content: content ?? this.content,
      type: type ?? this.type,
      description: description ?? this.description,
      storyView: storyView ?? this.storyView,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'content': content,
      'type': type,
      'description': description,
      'storyView': storyView,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'StoryItemEntity(content: $content, type: $type, description: $description, storyView: $storyView)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is StoryItemEntity &&
      other.content == content &&
      other.type == type &&
      other.description == description &&
      other.storyView == storyView;
  }

  @override
  int get hashCode {
    return content.hashCode ^
      type.hashCode ^
      description.hashCode ^
      storyView.hashCode;
  }
}
