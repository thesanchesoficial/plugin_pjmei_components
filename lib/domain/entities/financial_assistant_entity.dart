import 'dart:convert';

import 'package:flutter/foundation.dart';

class FinancialAssistantEntity {
  
  FinancialAssistantEntity({
    required this.name,
    required this.value,
    this.hint,
    required this.url,
    this.icon,
    this.params,
  });

  factory FinancialAssistantEntity.fromMap(Map<String, dynamic> map) {
    return FinancialAssistantEntity(
      name: map['name'] ?? '',
      value: map['value'] ?? '',
      hint: map['hint'] ?? '',
      url: map['url'] ?? '',
      icon: map['icon'] ?? '',
      params: map['params'] == null ? {} : Map<String, dynamic>.from(map['params']),
    );
  }

  factory FinancialAssistantEntity.fromJson(String source) => FinancialAssistantEntity.fromMap(json.decode(source));
  String name;
  String value;
  String? hint;
  String url;
  String? icon;
  Map<String, dynamic>? params;

  FinancialAssistantEntity copyWith({
    String? name,
    String? value,
    String? hint,
    String? url,
    String? icon,
    Map<String, dynamic>? params,
  }) {
    return FinancialAssistantEntity(
      name: name ?? this.name,
      value: value ?? this.value,
      hint: hint ?? this.hint,
      url: url ?? this.url,
      icon: icon ?? this.icon,
      params: params ?? this.params,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'value': value,
      'hint': hint,
      'url': url,
      'icon': icon,
      'params': params,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'FinancialAssistantEntity(name: $name, value: $value, hint: $hint, url: $url, icon: $icon, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is FinancialAssistantEntity &&
      other.name == name &&
      other.value == value &&
      other.hint == hint &&
      other.url == url &&
      other.icon == icon &&
      mapEquals(other.params, params);
  }

  @override
  int get hashCode {
    return name.hashCode ^
      value.hashCode ^
      hint.hashCode ^
      url.hashCode ^
      icon.hashCode ^
      params.hashCode;
  }
}
