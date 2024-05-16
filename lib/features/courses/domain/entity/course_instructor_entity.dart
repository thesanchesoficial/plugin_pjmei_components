import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'course_entity.dart';

class CourseInstructorEntity {
  final String? id;
  final String? createdAt;
  final String? updatedAt;
  final String name;
  final String avatar;
  final String biography;
  final String? email;
  final List<CourseEntity>? courses;
  final String? whiteLabel;
  CourseInstructorEntity({
    this.id,
    this.createdAt,
    this.updatedAt,
    required this.name,
    required this.avatar,
    required this.biography,
    this.email,
    this.courses,
    this.whiteLabel,
  });

  CourseInstructorEntity copyWith({
    String? id,
    String? createdAt,
    String? updatedAt,
    String? name,
    String? avatar,
    String? biography,
    String? email,
    List<CourseEntity>? courses,
    String? whiteLabel,
  }) {
    return CourseInstructorEntity(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
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
      'id': id,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'name': name,
      'avatar': avatar,
      'biography': biography,
      'email': email,
      'courses': courses?.map((x) => x.toMap()).toList(),
      'whiteLabel': whiteLabel,
    };
  }

  factory CourseInstructorEntity.fromMap(Map<String, dynamic> map) {
    return CourseInstructorEntity(
      id: map['id'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      name: map['name'] ?? '',
      avatar: map['avatar'] ?? '',
      biography: map['biography'] ?? '',
      email: map['email'],
      courses: map['courses'] != null ? List<CourseEntity>.from(map['courses']?.map((x) => CourseEntity.fromMap(x))) : null,
      whiteLabel: map['whiteLabel'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseInstructorEntity.fromJson(String source) => CourseInstructorEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CourseInstructorEntity(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, avatar: $avatar, biography: $biography, email: $email, courses: $courses, whiteLabel: $whiteLabel)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CourseInstructorEntity &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.name == name &&
      other.avatar == avatar &&
      other.biography == biography &&
      other.email == email &&
      listEquals(other.courses, courses) &&
      other.whiteLabel == whiteLabel;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      name.hashCode ^
      avatar.hashCode ^
      biography.hashCode ^
      email.hashCode ^
      courses.hashCode ^
      whiteLabel.hashCode;
  }
}
