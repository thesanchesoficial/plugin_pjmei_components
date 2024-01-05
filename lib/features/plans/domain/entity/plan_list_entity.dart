import 'dart:convert';

import 'package:flutter/foundation.dart';

class PlanEntity {
  final String? id;
  final String? planId;
  final bool? promotionalPlan;
  final String name;
  final int amount;
  final String description;
  final List<PlanItemEntity>? planItem;
  final int? days;
  final int? trialDays;
  final List<String>? paymentMethods;
  
  PlanEntity({
    this.id,
    this.planId,
    this.promotionalPlan,
    required this.name,
    required this.amount,
    required this.description,
    this.planItem,
    this.days,
    this.trialDays,
    this.paymentMethods,
  });
  
  PlanEntity copyWith({
    String? id,
    String? planId,
    bool? promotionalPlan,
    String? name,
    int? amount,
    String? description,
    List<PlanItemEntity>? planItem,
    int? days,
    int? trialDays,
    List<String>? paymentMethods,
  }) {
    return PlanEntity(
      id: id ?? this.id,
      planId: planId ?? this.planId,
      promotionalPlan: promotionalPlan ?? this.promotionalPlan,
      name: name ?? this.name,
      amount: amount ?? this.amount,
      description: description ?? this.description,
      planItem: planItem ?? this.planItem,
      days: days ?? this.days,
      trialDays: trialDays ?? this.trialDays,
      paymentMethods: paymentMethods ?? this.paymentMethods,
    );
  }


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'planId': planId,
      'plan_id': planId,
      'promotionalPlan': promotionalPlan,
      'promotional_plan': promotionalPlan,
      'name': name,
      'amount': amount,
      'description': description,
      'planItem': planItem?.map((x) => x.toMap()).toList() ?? [],
      'plan_item': planItem?.map((x) => x.toMap()).toList() ?? [],
      'days': days,
      'trialDays': trialDays,
      'trial_days': trialDays,
      'paymentMethods': paymentMethods,
      'payment_methods': paymentMethods,
    };
  }

  factory PlanEntity.fromMap(Map<String, dynamic> map) {
    return PlanEntity(
      id: map['id'],
      planId: map['planId'] ?? map['plan_id'],
      promotionalPlan: map['promotionalPlan'] ?? map['promotional_plan'],
      name: map['name'] ?? '',
      amount: map['amount']?.toInt() ?? 0,
      description: map['description'] ?? '',
      planItem: map['planItem'] != null ? List<PlanItemEntity>.from(map['planItem']?.map((x) => PlanItemEntity.fromMap(x))) : map['plan_item'] != null ? List<PlanItemEntity>.from(map['plan_item']?.map((x) => PlanItemEntity.fromMap(x))) : null,
      days: map['days']?.toInt(),
      trialDays: map['trialDays']?.toInt() ?? map['trial_days']?.toInt(),
      paymentMethods: map['paymentMethods'] != null ? List<String>.from(map['paymentMethods']) : map['paymentMethods'] != null ? List<String>.from(map['payment_methods']) : [],
    );
  }

  String toJson() => json.encode(toMap());

  factory PlanEntity.fromJson(String source) => PlanEntity.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PlanEntity &&
      other.id == id &&
      other.planId == planId &&
      other.promotionalPlan == promotionalPlan &&
      other.name == name &&
      other.amount == amount &&
      other.description == description &&
      listEquals(other.planItem, planItem) &&
      other.days == days &&
      other.trialDays == trialDays &&
      listEquals(other.paymentMethods, paymentMethods);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      planId.hashCode ^
      promotionalPlan.hashCode ^
      name.hashCode ^
      amount.hashCode ^
      description.hashCode ^
      planItem.hashCode ^
      days.hashCode ^
      trialDays.hashCode ^
      paymentMethods.hashCode;
  }

  @override
  String toString() {
    return 'PlanEntity(id: $id, planId: $planId, promotionalPlan: $promotionalPlan, name: $name, amount: $amount, description: $description, planItem: $planItem, days: $days, trialDays: $trialDays, paymentMethods: $paymentMethods)';
  }
}

class PlanItemEntity {
  final String? id;
  final String? planId;
  final String icon;
  final int? index;
  final String description;

  PlanItemEntity({
    this.id,
    this.index,
    required this.icon,
    required this.description,
    required this.planId,
  });

  PlanItemEntity copyWith({
    String? id,
    String? icon,
    String? description,
    String? planId,
    int? index,
  }) {
    return PlanItemEntity(
      id: id ?? this.id,
      icon: icon ?? this.icon,
      index: index ?? this.index,
      description: description ?? this.description,
      planId: planId ?? this.planId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'icon': icon,
      'index': index,
      'description': description,
      'planId': planId,
      'plan_id': planId,
    };
  }

  factory PlanItemEntity.fromMap(Map<String, dynamic> map) {
    return PlanItemEntity(
      id: map['id'],
      icon: map['icon'] ?? '',
      index: map['index'] ?? 0,
      description: map['description'] ?? '',
      planId: map['planId'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PlanItemEntity.fromJson(String source) => PlanItemEntity.fromMap(json.decode(source));

  @override
  String toString() => 'PlanItemEntity(id: $id, icon: $icon, description: $description)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PlanItemEntity &&
        other.id == id &&
        other.icon == icon &&
        other.index == index &&
        other.planId == planId &&
        other.description == description;
  }

  @override
  int get hashCode => id.hashCode ^ icon.hashCode ^ index.hashCode ^ planId.hashCode ^ description.hashCode;
}
