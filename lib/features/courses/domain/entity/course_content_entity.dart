import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:plugin_pjmei_components/features/courses/domain/entity/course_attachment_entity.dart';
import 'package:plugin_pjmei_components/features/courses/domain/entity/course_section_entity.dart';

class CourseContentEntity {
  final String? id;
  final String? createdAt;
  final String? updatedAt;
  final String type;
  final String title;
  final String description;
  final String? body;
  final String? storageKey;
  final int index;
  final List<CourseAttachmentEntity>? attachments;
  final CourseSectionEntity? section;
  CourseContentEntity({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.type,
    required this.title,
    required this.description,
    this.body,
    this.storageKey,
    required this.index,
    this.attachments,
    this.section,
  });

  CourseContentEntity copyWith({
    String? id,
    String? createdAt,
    String? updatedAt,
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
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
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
      'id': id,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'type': type,
      'title': title,
      'description': description,
      'body': body,
      'storageKey': storageKey,
      'index': index,
      'attachments': attachments?.map((x) => x.toMap()).toList(),
      'section': section?.toMap(),
    };
  }

  factory CourseContentEntity.fromMap(Map<String, dynamic> map) {
    return CourseContentEntity(
      id: map['id'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      type: map['type'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      body: map['body'],
      storageKey: map['storageKey'],
      index: map['index']?.toInt() ?? 0,
      attachments: map['attachments'] != null ? List<CourseAttachmentEntity>.from(map['attachments']?.map((x) => CourseAttachmentEntity.fromMap(x))) : null,
      section: map['section'] != null ? CourseSectionEntity.fromMap(map['section']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseContentEntity.fromJson(String source) => CourseContentEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CourseContentEntity(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, type: $type, title: $title, description: $description, body: $body, storageKey: $storageKey, index: $index, attachments: $attachments, section: $section)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CourseContentEntity &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
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
    return id.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      type.hashCode ^
      title.hashCode ^
      description.hashCode ^
      body.hashCode ^
      storageKey.hashCode ^
      index.hashCode ^
      attachments.hashCode ^
      section.hashCode;
  }
}
