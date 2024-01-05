import 'dart:convert';

import 'finance_category_entity.dart';
import 'finance_subcategory_entity.dart';

class FinanceEntity {

  FinanceEntity({
    this.id,
    this.title,
    this.description,
    this.value,
    this.date,
    this.type,
    this.status,
    this.variable,
    this.subcategory,
    this.category,
    this.recurrent,
    this.frequenceId,
    this.recurrentPosition,
    this.recurrentQuantity,
  });

  factory FinanceEntity.fromMap(Map<String, dynamic> map) {
    return FinanceEntity(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      value: num.tryParse(map['value'].toString()) ?? 0,
      date: map['date'] ?? '',
      type: map['type'] ?? '',
      status: map['status'] ?? '',
      recurrent: map['recurrent'] ?? '',
      variable: map['variable'] ?? '',
      frequenceId: map['frequenceId'] ?? '',
      recurrentQuantity: map['recurrent_quantity'] ?? 0,
      recurrentPosition: map['recurrent_position'] ?? 0,
      subcategory: FinanceSubcategoryEntity.fromMap(map['subcategory']),
      category: FinanceCategoryEntity.fromMap(map['category']),
    );
  }

  factory FinanceEntity.fromJson(String source) => FinanceEntity.fromMap(json.decode(source));
  String? id;
  String? title;
  String? description;
  num? value;
  String? date;
  String? type;
  bool? status;
  bool? variable;
  bool? recurrent;
  String? frequenceId;
  num? recurrentQuantity;
  num? recurrentPosition;
  FinanceSubcategoryEntity? subcategory;
  FinanceCategoryEntity? category;

  FinanceEntity copyWith({
    String? id,
    String? title,
    String? description,
    num? value,
    String? date,
    String? type,
    bool? status,
    bool? variable,
    bool? recurrent,
    String? frequenceId,
    num? recurrentQuantity,
    num? recurrentPosition,
    FinanceSubcategoryEntity? subcategory,
    FinanceCategoryEntity? category,
  }) {
    return FinanceEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      value: value ?? this.value,
      date: date ?? this.date,
      type: type ?? this.type,
      status: status ?? this.status,
      recurrent: recurrent ?? this.recurrent,
      variable: variable ?? this.variable,
      frequenceId: frequenceId ?? this.frequenceId,
      recurrentQuantity: recurrentQuantity ?? this.recurrentQuantity,
      recurrentPosition: recurrentPosition ?? this.recurrentPosition,
      subcategory: subcategory ?? this.subcategory,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'value': value,
      'date': date,
      'type': type,
      'status': status,
      'variable': variable,
      'recurrent': recurrent,
      'frequenceId': frequenceId,
      'recurrent_quantity': recurrentQuantity,
      'recurrent_position': recurrentPosition,
      'subcategory': subcategory?.toMap(),
      'category': category?.toMap(),
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'FinanceEntity(id: $id, cover: $title, title: $title, value: $value, description: $description, date: $date, type: $type, status: $status, variable: $variable, subcategory id: $subcategory, subcategory name: $subcategory)';
  }
}
