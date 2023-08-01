import 'dart:convert';

import 'package:flutter/foundation.dart';

class TransactionFinaceOpenedEntity {
  
  TransactionFinaceOpenedEntity({
    this.id,
    this.value,
    this.type,
    this.date,
    this.description,
    this.status,
    this.variable,
    this.recurrent,
    this.frequenceId,
    this.subcategory,
    this.category,
  });

  factory TransactionFinaceOpenedEntity.fromMap(Map<String, dynamic> map) {
    return TransactionFinaceOpenedEntity(
      id: map['id'] ?? '',
      value: map['value'] ?? '',
      type: map['type'] ?? '',
      date: map['date'] ?? '',
      description: map['description'] ?? '',
      status: map['status'] ?? false,
      variable: map['variable'] ?? false,
      recurrent: map['recurrent'] ?? false,
      frequenceId: map['frequenceId'] ?? '',
      subcategory: Map.from(map['subcategory']),
      category: Map.from(map['category']),
    );
  }

  factory TransactionFinaceOpenedEntity.fromJson(String source) => TransactionFinaceOpenedEntity.fromMap(json.decode(source));
  String? id;
  String? value;
  String? type;
  String? date;
  String? description;
  bool? status;
  bool? variable;
  bool? recurrent;
  String? frequenceId;
  Map? subcategory;
  Map? category;

  TransactionFinaceOpenedEntity copyWith({
    String? id,
    String? value,
    String? type,
    String? date,
    String? description,
    bool? status,
    bool? variable,
    bool? recurrent,
    String? frequenceId,
    Map? subcategory,
    Map? category,
  }) {
    return TransactionFinaceOpenedEntity(
      id: id ?? this.id,
      value: value ?? this.value,
      type: type ?? this.type,
      date: date ?? this.date,
      description: description ?? this.description,
      status: status ?? this.status,
      variable: variable ?? this.variable,
      recurrent: recurrent ?? this.recurrent,
      frequenceId: frequenceId ?? this.frequenceId,
      subcategory: subcategory ?? this.subcategory,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'value': value,
      'type': type,
      'date': date,
      'description': description,
      'status': status,
      'variable': variable,
      'recurrent': recurrent,
      'frequenceId': frequenceId,
      'subcategory': subcategory,
      'category': category,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'TransactionFinaceOpenedEntity(id: $id, value: $value, type: $type, date: $date, description: $description, status: $status, variable: $variable, recurrent: $recurrent, frequenceId: $frequenceId, subcategory: $subcategory, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is TransactionFinaceOpenedEntity &&
      other.id == id &&
      other.value == value &&
      other.type == type &&
      other.date == date &&
      other.description == description &&
      other.status == status &&
      other.variable == variable &&
      other.recurrent == recurrent &&
      other.frequenceId == frequenceId &&
      mapEquals(other.subcategory, subcategory) &&
      mapEquals(other.category, category);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      value.hashCode ^
      type.hashCode ^
      date.hashCode ^
      description.hashCode ^
      status.hashCode ^
      variable.hashCode ^
      recurrent.hashCode ^
      frequenceId.hashCode ^
      subcategory.hashCode ^
      category.hashCode;
  }
}
