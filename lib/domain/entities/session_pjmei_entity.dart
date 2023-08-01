import 'dart:convert';
import 'package:flutter/foundation.dart';

class SessionPjmei {

  SessionPjmei({
    this.id,
    this.type,
    this.value,
    this.style,
    this.index,
  });

  factory SessionPjmei.fromMap(Map<String, dynamic> map) {
    return SessionPjmei(
      id: map['id'],
      type: map['type'],
      value: Map.from(map['value'] ?? {}),
      style: Map.from(map['style'] ?? {}),
      index: map['index'],
    );
  }

  factory SessionPjmei.fromJson(String source) =>
      SessionPjmei.fromMap(json.decode(source));
  String? id;
  String? type;
  Map? value;
  Map? style;
  int? index;

  SessionPjmei copyWith({
    String? id,
    String? type,
    Map? value,
    Map? style,
    int? index,
  }) {
    return SessionPjmei(
      id: id ?? this.id,
      type: type ?? this.type,
      value: value ?? this.value,
      style: style ?? this.style,
      index: index ?? this.index,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'value': value,
      'style': style,
      'index': index,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'SessionPjmei(id: $id, type: $type, value: $value, style: $style, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SessionPjmei &&
        other.id == id &&
        other.type == type &&
        mapEquals(other.value, value) &&
        mapEquals(other.style, style) &&
        other.index == index;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        type.hashCode ^
        value.hashCode ^
        style.hashCode ^
        index.hashCode;
  }
}