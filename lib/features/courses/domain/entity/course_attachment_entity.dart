import 'dart:convert';

class CourseAttachmentEntity {
  final String? whiteLabel;
  CourseAttachmentEntity({
    this.whiteLabel,
  });

  CourseAttachmentEntity copyWith({
    String? whiteLabel,
  }) {
    return CourseAttachmentEntity(
      whiteLabel: whiteLabel ?? this.whiteLabel,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'whiteLabel': whiteLabel,
    };
  }

  factory CourseAttachmentEntity.fromMap(Map<String, dynamic> map) {
    return CourseAttachmentEntity(
      whiteLabel: map['whiteLabel'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseAttachmentEntity.fromJson(String source) => CourseAttachmentEntity.fromMap(json.decode(source));

  @override
  String toString() => 'CourseAttachmentEntity(whiteLabel: $whiteLabel)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CourseAttachmentEntity &&
      other.whiteLabel == whiteLabel;
  }

  @override
  int get hashCode => whiteLabel.hashCode;
}
