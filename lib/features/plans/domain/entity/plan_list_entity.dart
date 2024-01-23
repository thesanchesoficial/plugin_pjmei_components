import 'dart:convert';

import 'package:flutter/foundation.dart';

class PlanEntity {
  final String? id;
  final String? planId;
  final bool? promotionalPlan;
  final String name;
  final String type;
  final String? statementDescriptor;
  final String interval;
  final int intervalCount;
  final int price;
  final String description;
  final List<PlanItemEntity>? planItem;
  final List<int>? installments;
  final int? days;
  final int? trialPeriodDays;
  final List<String>? paymentMethods;
  final String? status;
  String? createdAt;
  String? updatedAt;
  PlanEntity({
    this.id,
    this.planId,
    this.promotionalPlan,
    required this.name,
    required this.type,
    this.statementDescriptor,
    required this.interval,
    required this.intervalCount,
    required this.price,
    required this.description,
    this.planItem,
    this.installments,
    this.days,
    this.trialPeriodDays,
    this.paymentMethods,
    this.status,
    this.createdAt,
    this.updatedAt,
  });


  PlanEntity copyWith({
    String? id,
    String? planId,
    bool? promotionalPlan,
    String? name,
    String? type,
    String? statementDescriptor,
    String? interval,
    int? intervalCount,
    int? price,
    String? description,
    List<PlanItemEntity>? planItem,
    List<int>? installments,
    int? days,
    int? trialPeriodDays,
    List<String>? paymentMethods,
    String? status,
    String? createdAt,
    String? updatedAt,
  }) {
    return PlanEntity(
      id: id ?? this.id,
      planId: planId ?? this.planId,
      promotionalPlan: promotionalPlan ?? this.promotionalPlan,
      name: name ?? this.name,
      type: type ?? this.type,
      statementDescriptor: statementDescriptor ?? this.statementDescriptor,
      interval: interval ?? this.interval,
      intervalCount: intervalCount ?? this.intervalCount,
      price: price ?? this.price,
      description: description ?? this.description,
      planItem: planItem ?? this.planItem,
      installments: installments ?? this.installments,
      days: days ?? this.days,
      trialPeriodDays: trialPeriodDays ?? this.trialPeriodDays,
      paymentMethods: paymentMethods ?? this.paymentMethods,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'planId': planId,
      'promotionalPlan': promotionalPlan,
      'name': name,
      'type': type,
      'statementDescriptor': statementDescriptor,
      'interval': interval,
      'intervalCount': intervalCount,
      'price': price,
      'description': description,
      'planItem': planItem?.map((x) => x.toMap()).toList(),
      'installments': installments,
      'days': days,
      'trialPeriodDays': trialPeriodDays,
      'paymentMethods': paymentMethods,
      'status': status,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory PlanEntity.fromMap(Map<String, dynamic> map) {
    return PlanEntity(
      id: map['id'],
      planId: map['planId'],
      promotionalPlan: map['promotionalPlan'],
      name: map['name'] ?? '',
      type: map['type'] ?? '',
      statementDescriptor: map['statementDescriptor'],
      interval: map['interval'] ?? '',
      intervalCount: map['intervalCount']?.toInt() ?? 0,
      price: map['price']?.toInt() ?? 0,
      description: map['description'] ?? '',
      planItem: map['planItem'] != null ? List<PlanItemEntity>.from(map['planItem']?.map((x) => PlanItemEntity.fromMap(x))) : null,
      installments: List<int>.from(map['installments']),
      days: map['days']?.toInt(),
      trialPeriodDays: map['trialPeriodDays']?.toInt(),
      paymentMethods: List<String>.from(map['paymentMethods']),
      status: map['status'] ?? '',
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PlanEntity.fromJson(String source) => PlanEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PlanEntity(id: $id, planId: $planId, promotionalPlan: $promotionalPlan, name: $name, type: $type, statementDescriptor: $statementDescriptor, interval: $interval, intervalCount: $intervalCount, price: $price, description: $description, planItem: $planItem, installments: $installments, days: $days, trialPeriodDays: $trialPeriodDays, paymentMethods: $paymentMethods, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PlanEntity &&
      other.id == id &&
      other.planId == planId &&
      other.promotionalPlan == promotionalPlan &&
      other.name == name &&
      other.type == type &&
      other.statementDescriptor == statementDescriptor &&
      other.interval == interval &&
      other.intervalCount == intervalCount &&
      other.price == price &&
      other.description == description &&
      listEquals(other.planItem, planItem) &&
      listEquals(other.installments, installments) &&
      other.days == days &&
      other.trialPeriodDays == trialPeriodDays &&
      listEquals(other.paymentMethods, paymentMethods) &&
      other.status == status &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      planId.hashCode ^
      promotionalPlan.hashCode ^
      name.hashCode ^
      type.hashCode ^
      statementDescriptor.hashCode ^
      interval.hashCode ^
      intervalCount.hashCode ^
      price.hashCode ^
      description.hashCode ^
      planItem.hashCode ^
      installments.hashCode ^
      days.hashCode ^
      trialPeriodDays.hashCode ^
      paymentMethods.hashCode ^
      status.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode;
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

  factory PlanItemEntity.fromJson(String source) =>
      PlanItemEntity.fromMap(json.decode(source));

  @override
  String toString() =>
      'PlanItemEntity(id: $id, icon: $icon, description: $description)';

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
  int get hashCode =>
      id.hashCode ^
      icon.hashCode ^
      index.hashCode ^
      planId.hashCode ^
      description.hashCode;
}
