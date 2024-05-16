import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'course_category_entity.dart';
import 'course_instructor_entity.dart';
import 'course_section_entity.dart';

class CourseEntity {
  final String? id;
  final String? createdAt;
  final String? updatedAt;
  final String title;
  final String description;
  final String cover;
  final CourseCategoryEntity category;
  final List<CourseInstructorEntity>? instructors;
  final List<CourseSectionEntity>? sections;
  final bool isVisible;
  final bool isFree;
  final String? whiteLabel;
  CourseEntity({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.title,
    required this.description,
    required this.cover,
    required this.category,
    this.instructors,
    this.sections,
    required this.isVisible,
    required this.isFree,
    this.whiteLabel,
  });

  CourseEntity copyWith({
    String? id,
    String? createdAt,
    String? updatedAt,
    String? title,
    String? description,
    String? cover,
    CourseCategoryEntity? category,
    List<CourseInstructorEntity>? instructors,
    List<CourseSectionEntity>? sections,
    bool? isVisible,
    bool? isFree,
    String? whiteLabel,
  }) {
    return CourseEntity(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      title: title ?? this.title,
      description: description ?? this.description,
      cover: cover ?? this.cover,
      category: category ?? this.category,
      instructors: instructors ?? this.instructors,
      sections: sections ?? this.sections,
      isVisible: isVisible ?? this.isVisible,
      isFree: isFree ?? this.isFree,
      whiteLabel: whiteLabel ?? this.whiteLabel,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'title': title,
      'description': description,
      'cover': cover,
      'category': category.toMap(),
      'instructors': instructors?.map((x) => x.toMap()).toList(),
      'sections': sections?.map((x) => x.toMap()).toList(),
      'isVisible': isVisible,
      'isFree': isFree,
      'whiteLabel': whiteLabel,
    };
  }

  factory CourseEntity.fromMap(Map<String, dynamic> map) {
    return CourseEntity(
      id: map['id'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      cover: map['cover'] ?? '',
      category: CourseCategoryEntity.fromMap(map['category']),
      instructors: map['instructors'] != null ? List<CourseInstructorEntity>.from(map['instructors']?.map((x) => CourseInstructorEntity.fromMap(x))) : null,
      sections: map['sections'] != null ? List<CourseSectionEntity>.from(map['sections']?.map((x) => CourseSectionEntity.fromMap(x))) : null,
      isVisible: map['isVisible'] ?? false,
      isFree: map['isFree'] ?? false,
      whiteLabel: map['whiteLabel'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseEntity.fromJson(String source) => CourseEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CourseEntity(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, title: $title, description: $description, cover: $cover, category: $category, instructors: $instructors, sections: $sections, isVisible: $isVisible, isFree: $isFree, whiteLabel: $whiteLabel)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CourseEntity &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.title == title &&
      other.description == description &&
      other.cover == cover &&
      other.category == category &&
      listEquals(other.instructors, instructors) &&
      listEquals(other.sections, sections) &&
      other.isVisible == isVisible &&
      other.isFree == isFree &&
      other.whiteLabel == whiteLabel;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      title.hashCode ^
      description.hashCode ^
      cover.hashCode ^
      category.hashCode ^
      instructors.hashCode ^
      sections.hashCode ^
      isVisible.hashCode ^
      isFree.hashCode ^
      whiteLabel.hashCode;
  }
}
