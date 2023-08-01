import 'dart:convert';

import 'package:flutter/foundation.dart';

class HelpCategoriesFaqEntity {

  HelpCategoriesFaqEntity({
    this.id,
    this.title,
    this.description,
    this.icon,
    this.type,
    this.index,
  });

  factory HelpCategoriesFaqEntity.fromMap(Map<String, dynamic> map) {
    return HelpCategoriesFaqEntity(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      icon: map['icon'] ?? '',
      type: map['type'] == null ? [] : List<String>.from(map['type']),
      index: int.tryParse((map['index'] ?? 0).toString()) ?? 0,
    );
  }

  factory HelpCategoriesFaqEntity.fromJson(String source) => HelpCategoriesFaqEntity.fromMap(json.decode(source));
  String? id;
  String? title;
  String? description;
  String? icon;
  List<String>? type;
  int? index;

  HelpCategoriesFaqEntity copyWith({
    String? id,
    String? title,
    String? description,
    String? icon,
    List<String>? type,
    int? index,
  }) {
    return HelpCategoriesFaqEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      icon: icon ?? this.icon,
      type: type ?? this.type,
      index: index ?? this.index,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'icon': icon,
      'type': type,
      'index': index,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'HelpCategoriesFaqEntity(id: $id, title: $title, description: $description, icon: $icon, type: $type, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is HelpCategoriesFaqEntity &&
      other.id == id &&
      other.title == title &&
      other.description == description &&
      other.icon == icon &&
      listEquals(other.type, type) &&
      other.index == index;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      icon.hashCode ^
      type.hashCode ^
      index.hashCode;
  }
}
