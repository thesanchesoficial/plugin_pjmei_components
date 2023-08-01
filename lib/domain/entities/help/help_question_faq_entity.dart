import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class HelpQuestionFaqEntity {
  
  HelpQuestionFaqEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.summary,
    required this.type,
    required this.index,
    this.category,
  });

  factory HelpQuestionFaqEntity.fromMap(Map<String, dynamic> map) {
    return HelpQuestionFaqEntity(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      summary: map['summary'] ?? '',
      type: List<String>.from(map['type']),
      index: map['index']?.toInt() ?? 0,
      category: map['category'] == null ? null : HelpCategoriesFaqEntity.fromMap(map['category']),
    );
  }

  factory HelpQuestionFaqEntity.fromJson(String source) => HelpQuestionFaqEntity.fromMap(json.decode(source));
  String id;
  String title;
  String description;
  String summary;
  List<String> type;
  int index;
  HelpCategoriesFaqEntity? category;


  HelpQuestionFaqEntity copyWith({
    String? id,
    String? title,
    String? description,
    String? summary,
    List<String>? type,
    int? index,
    HelpCategoriesFaqEntity? category,
  }) {
    return HelpQuestionFaqEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      summary: summary ?? this.summary,
      type: type ?? this.type,
      index: index ?? this.index,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'summary': summary,
      'type': type,
      'index': index,
      'category': category?.toMap(),
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is HelpQuestionFaqEntity &&
      other.id == id &&
      other.title == title &&
      other.description == description &&
      other.summary == summary &&
      listEquals(other.type, type) &&
      other.index == index &&
      other.category == category;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      summary.hashCode ^
      type.hashCode ^
      index.hashCode ^
      category.hashCode;
  }

  @override
  String toString() {
    return 'HelpQuestionFaqEntity(id: $id, title: $title, description: $description, summary: $summary, type: $type, index: $index, category: $category)';
  }
}
