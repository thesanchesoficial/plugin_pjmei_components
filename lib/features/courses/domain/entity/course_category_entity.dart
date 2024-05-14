import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'course_entity.dart';

class CourseCategoryEntity {
  final String name;
  final String? description;
  final List<CourseEntity> courses;
  final String? whiteLabel;
  CourseCategoryEntity({
    required this.name,
    this.description,
    required this.courses,
    this.whiteLabel,
  });

  CourseCategoryEntity copyWith({
    String? name,
    String? description,
    List<CourseEntity>? courses,
    String? whiteLabel,
  }) {
    return CourseCategoryEntity(
      name: name ?? this.name,
      description: description ?? this.description,
      courses: courses ?? this.courses,
      whiteLabel: whiteLabel ?? this.whiteLabel,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'courses': courses.map((x) => x.toMap()).toList(),
      'whiteLabel': whiteLabel,
    };
  }

  factory CourseCategoryEntity.fromMap(Map<String, dynamic> map) {
    return CourseCategoryEntity(
      name: map['name'] ?? '',
      description: map['description'],
      courses: List<CourseEntity>.from(map['courses']?.map((x) => CourseEntity.fromMap(x))),
      whiteLabel: map['whiteLabel'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseCategoryEntity.fromJson(String source) => CourseCategoryEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CourseCategoryEntity(name: $name, description: $description, courses: $courses, whiteLabel: $whiteLabel)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CourseCategoryEntity &&
      other.name == name &&
      other.description == description &&
      listEquals(other.courses, courses) &&
      other.whiteLabel == whiteLabel;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      description.hashCode ^
      courses.hashCode ^
      whiteLabel.hashCode;
  }
}
