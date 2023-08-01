import 'dart:convert';

import 'package:flutter/foundation.dart';

class PlanListEntity {
  PlanListEntity({
    this.id,
    this.name,
    this.description,
    this.amount,
    this.planItem,
  });

  factory PlanListEntity.fromMap(Map<String, dynamic> map) {
    return PlanListEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      amount: map['amount']?.toInt() ?? 0,
      planItem: List<FeaturePlanEntity>.from(map['planItem']?.map((x) => FeaturePlanEntity.fromMap(x))),
    );
  }

  factory PlanListEntity.fromJson(String source) => PlanListEntity.fromMap(json.decode(source));
  String? id;
  String? name;
  String? description;
  int? amount;
  List<FeaturePlanEntity>? planItem;
  
  PlanListEntity copyWith({
    String? id,
    String? name,
    String? description,
    int? amount,
    List<FeaturePlanEntity>? planItem,
  }) {
    return PlanListEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      amount: amount ?? this.amount,
      planItem: planItem ?? this.planItem,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'amount': amount,
      'planItem': planItem?.map((x) => x.toMap()).toList(),
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'PlanListEntity(id: $id, name: $name, description: $description, amount: $amount, planItem: $planItem)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PlanListEntity &&
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.amount == amount &&
      listEquals(other.planItem, planItem);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      amount.hashCode ^
      planItem.hashCode;
  }
}

class FeaturePlanEntity {

  FeaturePlanEntity({
    this.id,
    this.description,
    this.icon,
    this.index,
  });

  factory FeaturePlanEntity.fromMap(Map<String, dynamic> map) {
    return FeaturePlanEntity(
      id: map['id'] ?? '',
      description: map['description'] ?? '',
      icon: map['icon'] ?? '',
      index: map['index']?.toInt() ?? 0,
    );
  }

  factory FeaturePlanEntity.fromJson(String source) => FeaturePlanEntity.fromMap(json.decode(source));
  String? id;
  String? description;
  String? icon;
  int? index;
  
  FeaturePlanEntity copyWith({
    String? id,
    String? description,
    String? icon,
    int? index,
  }) {
    return FeaturePlanEntity(
      id: id ?? this.id,
      description: description ?? this.description,
      icon: icon ?? this.icon,
      index: index ?? this.index,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'description': description,
      'icon': icon,
      'index': index,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'FeaturePlanEntity(id: $id, description: $description, icon: $icon, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is FeaturePlanEntity &&
      other.id == id &&
      other.description == description &&
      other.icon == icon &&
      other.index == index;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      description.hashCode ^
      icon.hashCode ^
      index.hashCode;
  }
}
