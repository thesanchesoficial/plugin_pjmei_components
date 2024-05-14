import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'course_content_entity.dart';
import 'course_entity.dart';

class CourseSectionEntity {
  final String title;
  final String? description;
  final bool isVisible;
  final int index;
  final int duration;
  final List<CourseContentEntity> contents;
  final CourseEntity course;
  CourseSectionEntity({
    required this.title,
    this.description,
    required this.isVisible,
    required this.index,
    required this.duration,
    required this.contents,
    required this.course,
  });

  CourseSectionEntity copyWith({
    String? title,
    String? description,
    bool? isVisible,
    int? index,
    int? duration,
    List<CourseContentEntity>? contents,
    CourseEntity? course,
  }) {
    return CourseSectionEntity(
      title: title ?? this.title,
      description: description ?? this.description,
      isVisible: isVisible ?? this.isVisible,
      index: index ?? this.index,
      duration: duration ?? this.duration,
      contents: contents ?? this.contents,
      course: course ?? this.course,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'isVisible': isVisible,
      'index': index,
      'duration': duration,
      'contents': contents.map((x) => x.toMap()).toList(),
      'course': course.toMap(),
    };
  }

  factory CourseSectionEntity.fromMap(Map<String, dynamic> map) {
    return CourseSectionEntity(
      title: map['title'] ?? '',
      description: map['description'],
      isVisible: map['isVisible'] ?? false,
      index: map['index']?.toInt() ?? 0,
      duration: map['duration']?.toInt() ?? 0,
      contents: List<CourseContentEntity>.from(map['contents']?.map((x) => CourseContentEntity.fromMap(x))),
      course: CourseEntity.fromMap(map['course']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseSectionEntity.fromJson(String source) => CourseSectionEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CourseSectionEntity(title: $title, description: $description, isVisible: $isVisible, index: $index, duration: $duration, contents: $contents, course: $course)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CourseSectionEntity &&
      other.title == title &&
      other.description == description &&
      other.isVisible == isVisible &&
      other.index == index &&
      other.duration == duration &&
      listEquals(other.contents, contents) &&
      other.course == course;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      description.hashCode ^
      isVisible.hashCode ^
      index.hashCode ^
      duration.hashCode ^
      contents.hashCode ^
      course.hashCode;
  }
}
