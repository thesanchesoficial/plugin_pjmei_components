import 'dart:convert';

class ChatDefaultEntity {
  final String category;
  final String message;
  final String id;
  final String? createdAt;
  final String? updatedAt;
  
  ChatDefaultEntity({
    required this.category,
    required this.message,
    required this.id,
    this.createdAt,
    this.updatedAt,
  });

  ChatDefaultEntity copyWith({
    String? category,
    String? message,
    String? id,
    String? createdAt,
    String? updatedAt,
  }) {
    return ChatDefaultEntity(
      category: category ?? this.category,
      message: message ?? this.message,
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'category': category,
      'message': message,
      'id': id,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory ChatDefaultEntity.fromMap(Map<String, dynamic> map) {
    return ChatDefaultEntity(
      category: map['category'] ?? '',
      message: map['message'] ?? '',
      id: map['id'] ?? '',
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatDefaultEntity.fromJson(String source) => ChatDefaultEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ChatDefaultEntity(category: $category, message: $message, id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ChatDefaultEntity &&
      other.category == category &&
      other.message == message &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return category.hashCode ^
      message.hashCode ^
      id.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode;
  }
}
