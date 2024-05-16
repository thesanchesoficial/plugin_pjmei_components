import 'dart:convert';

class CourseAttachmentEntity {
  final String? whiteLabel;
  final String? id;
  final String? createdAt;
  final String? updatedAt;
  CourseAttachmentEntity({
    this.whiteLabel,
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  CourseAttachmentEntity copyWith({
    String? whiteLabel,
    String? id,
    String? createdAt,
    String? updatedAt,
  }) {
    return CourseAttachmentEntity(
      whiteLabel: whiteLabel ?? this.whiteLabel,
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'whiteLabel': whiteLabel,
      'id': id,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory CourseAttachmentEntity.fromMap(Map<String, dynamic> map) {
    return CourseAttachmentEntity(
      whiteLabel: map['whiteLabel'],
      id: map['id'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseAttachmentEntity.fromJson(String source) => CourseAttachmentEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CourseAttachmentEntity(whiteLabel: $whiteLabel, id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CourseAttachmentEntity &&
      other.whiteLabel == whiteLabel &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return whiteLabel.hashCode ^
      id.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode;
  }
}
