import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'course_entity.dart';

class CourseInstructorEntity {
  final String name;
  final String avatar;
  final String biography;
  final String? email;
  final List<CourseEntity> courses;
  final String? whiteLabel;
  CourseInstructorEntity({
    required this.name,
    required this.avatar,
    required this.biography,
    this.email,
    required this.courses,
    this.whiteLabel,
  });

  CourseInstructorEntity copyWith({
    String? name,
    String? avatar,
    String? biography,
    String? email,
    List<CourseEntity>? courses,
    String? whiteLabel,
  }) {
    return CourseInstructorEntity(
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
      biography: biography ?? this.biography,
      email: email ?? this.email,
      courses: courses ?? this.courses,
      whiteLabel: whiteLabel ?? this.whiteLabel,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'avatar': avatar,
      'biography': biography,
      'email': email,
      'courses': courses.map((x) => x.toMap()).toList(),
      'whiteLabel': whiteLabel,
    };
  }

  factory CourseInstructorEntity.fromMap(Map<String, dynamic> map) {
    return CourseInstructorEntity(
      name: map['name'] ?? '',
      avatar: map['avatar'] ?? '',
      biography: map['biography'] ?? '',
      email: map['email'],
      courses: List<CourseEntity>.from(map['courses']?.map((x) => CourseEntity.fromMap(x))),
      whiteLabel: map['whiteLabel'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseInstructorEntity.fromJson(String source) => CourseInstructorEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CourseInstructorEntity(name: $name, avatar: $avatar, biography: $biography, email: $email, courses: $courses, whiteLabel: $whiteLabel)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CourseInstructorEntity &&
      other.name == name &&
      other.avatar == avatar &&
      other.biography == biography &&
      other.email == email &&
      listEquals(other.courses, courses) &&
      other.whiteLabel == whiteLabel;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      avatar.hashCode ^
      biography.hashCode ^
      email.hashCode ^
      courses.hashCode ^
      whiteLabel.hashCode;
  }
}
