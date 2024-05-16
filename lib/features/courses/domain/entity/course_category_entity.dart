import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'course_entity.dart';

class CourseCategoryEntity {
  final String? id;
  final String? createdAt;
  final String? updatedAt;
  final String name;
  final String? description;
  final List<CourseEntity>? courses;
  final String? whiteLabel;
  CourseCategoryEntity({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.name,
    this.description,
    this.courses,
    this.whiteLabel,
  });

  CourseCategoryEntity copyWith({
    String? id,
    String? createdAt,
    String? updatedAt,
    String? name,
    String? description,
    List<CourseEntity>? courses,
    String? whiteLabel,
  }) {
    return CourseCategoryEntity(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      name: name ?? this.name,
      description: description ?? this.description,
      courses: courses ?? this.courses,
      whiteLabel: whiteLabel ?? this.whiteLabel,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'name': name,
      'description': description,
      'courses': courses?.map((x) => x.toMap()).toList(),
      'whiteLabel': whiteLabel,
    };
  }

  factory CourseCategoryEntity.fromMap(Map<String, dynamic> map) {
    return CourseCategoryEntity(
      id: map['id'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      name: map['name'] ?? '',
      description: map['description'],
      courses: map['courses'] != null ? List<CourseEntity>.from(map['courses']?.map((x) => CourseEntity.fromMap(x))) : null,
      whiteLabel: map['whiteLabel'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseCategoryEntity.fromJson(String source) => CourseCategoryEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CourseCategoryEntity(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, description: $description, courses: $courses, whiteLabel: $whiteLabel)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CourseCategoryEntity &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.name == name &&
      other.description == description &&
      listEquals(other.courses, courses) &&
      other.whiteLabel == whiteLabel;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      name.hashCode ^
      description.hashCode ^
      courses.hashCode ^
      whiteLabel.hashCode;
  }
}
