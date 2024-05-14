import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:plugin_pjmei_components/features/courses/domain/entity/course_attachment_entity.dart';
import 'package:plugin_pjmei_components/features/courses/domain/entity/course_section_entity.dart';

class CourseContentEntity {
  final String type;
  final String title;
  final String description;
  final String? body;
  final String? storageKey;
  final int index;
  final List<CourseAttachmentEntity> attachments;
  final CourseSectionEntity section;
  CourseContentEntity({
    required this.type,
    required this.title,
    required this.description,
    this.body,
    this.storageKey,
    required this.index,
    required this.attachments,
    required this.section,
  });

  CourseContentEntity copyWith({
    String? type,
    String? title,
    String? description,
    String? body,
    String? storageKey,
    int? index,
    List<CourseAttachmentEntity>? attachments,
    CourseSectionEntity? section,
  }) {
    return CourseContentEntity(
      type: type ?? this.type,
      title: title ?? this.title,
      description: description ?? this.description,
      body: body ?? this.body,
      storageKey: storageKey ?? this.storageKey,
      index: index ?? this.index,
      attachments: attachments ?? this.attachments,
      section: section ?? this.section,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'title': title,
      'description': description,
      'body': body,
      'storageKey': storageKey,
      'index': index,
      'attachments': attachments.map((x) => x.toMap()).toList(),
      'section': section.toMap(),
    };
  }

  factory CourseContentEntity.fromMap(Map<String, dynamic> map) {
    return CourseContentEntity(
      type: map['type'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      body: map['body'],
      storageKey: map['storageKey'],
      index: map['index']?.toInt() ?? 0,
      attachments: List<CourseAttachmentEntity>.from(map['attachments']?.map((x) => CourseAttachmentEntity.fromMap(x))),
      section: CourseSectionEntity.fromMap(map['section']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseContentEntity.fromJson(String source) => CourseContentEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CourseContentEntity(type: $type, title: $title, description: $description, body: $body, storageKey: $storageKey, index: $index, attachments: $attachments, section: $section)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CourseContentEntity &&
      other.type == type &&
      other.title == title &&
      other.description == description &&
      other.body == body &&
      other.storageKey == storageKey &&
      other.index == index &&
      listEquals(other.attachments, attachments) &&
      other.section == section;
  }

  @override
  int get hashCode {
    return type.hashCode ^
      title.hashCode ^
      description.hashCode ^
      body.hashCode ^
      storageKey.hashCode ^
      index.hashCode ^
      attachments.hashCode ^
      section.hashCode;
  }
}
