import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'setting_white_label_entity.dart';
import 'style_white_label_entity.dart';
import 'validation_white_label_entity.dart';

class WhiteLabelEntity {
  String id;
  String name;
  String description;
  StyleWhiteLabelEntity style;
  SettingWhiteLabelEntity setting;
  List<ValidationWhiteLabelEntity>? validations;
  WhiteLabelEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.style,
    required this.setting,
    this.validations,
  }) {
    current = this;
  }
  static WhiteLabelEntity? current;

  WhiteLabelEntity copyWith({
    String? id,
    String? name,
    String? description,
    StyleWhiteLabelEntity? style,
    SettingWhiteLabelEntity? setting,
    List<ValidationWhiteLabelEntity>? validations,
  }) {
    return WhiteLabelEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      style: style ?? this.style,
      setting: setting ?? this.setting,
      validations: validations ?? this.validations,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'style': style.toMap(),
      'setting': setting.toMap(),
      'validations': validations?.map((x) => x.toMap()).toList(),
    };
  }

  factory WhiteLabelEntity.fromMap(Map<String, dynamic> map) {
    return WhiteLabelEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      style: StyleWhiteLabelEntity.fromMap(map['style']),
      setting: SettingWhiteLabelEntity.fromMap(map['setting']),
      validations: map['validations'] == null ? [] : List<ValidationWhiteLabelEntity>.from(map['validations']?.map((x) => ValidationWhiteLabelEntity.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory WhiteLabelEntity.fromJson(String source) => WhiteLabelEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'WhiteLabelEntity(id: $id, name: $name, description: $description, style: $style, setting: $setting, validations: $validations)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is WhiteLabelEntity &&
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.style == style &&
      other.setting == setting &&
      listEquals(other.validations, validations);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      style.hashCode ^
      setting.hashCode ^
      validations.hashCode;
  }
}
