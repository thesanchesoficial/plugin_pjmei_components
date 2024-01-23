import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'transaction_entity.dart';

class SubscriptionEntity {
  String? id;
  String? subscriberId;
  String? url;
  String? status;
  bool? active;
  CreditCardEntity? card;
  SubscriberEntity? subscriber;
  String? cardBrand;
  String? cardFirstDigits;
  String? cardLastDigits;
  String? paymentMethod;
  String? dateStart;
  String? dateEnd;
  String? createdAt;
  String? updatedAt;
  PlanSubscriptionEntity? plan;
  SubscriptionEntity({
    this.id,
    this.subscriberId,
    this.url,
    this.status,
    this.active,
    this.card,
    this.subscriber,
    this.cardBrand,
    this.cardFirstDigits,
    this.cardLastDigits,
    this.paymentMethod,
    this.dateStart,
    this.dateEnd,
    this.createdAt,
    this.updatedAt,
    this.plan,
  });
  
  

  SubscriptionEntity copyWith({
    String? id,
    String? subscriberId,
    String? url,
    String? status,
    bool? active,
    CreditCardEntity? card,
    SubscriberEntity? subscriber,
    String? cardBrand,
    String? cardFirstDigits,
    String? cardLastDigits,
    String? paymentMethod,
    String? dateStart,
    String? dateEnd,
    String? createdAt,
    String? updatedAt,
    PlanSubscriptionEntity? plan,
  }) {
    return SubscriptionEntity(
      id: id ?? this.id,
      subscriberId: subscriberId ?? this.subscriberId,
      url: url ?? this.url,
      status: status ?? this.status,
      active: active ?? this.active,
      card: card ?? this.card,
      subscriber: subscriber ?? this.subscriber,
      cardBrand: cardBrand ?? this.cardBrand,
      cardFirstDigits: cardFirstDigits ?? this.cardFirstDigits,
      cardLastDigits: cardLastDigits ?? this.cardLastDigits,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      dateStart: dateStart ?? this.dateStart,
      dateEnd: dateEnd ?? this.dateEnd,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      plan: plan ?? this.plan,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'subscriberId': subscriberId,
      'url': url,
      'status': status,
      'active': active,
      'card': card?.toMap(),
      'subscriber': subscriber?.toMap(),
      'cardBrand': cardBrand,
      'cardFirstDigits': cardFirstDigits,
      'cardLastDigits': cardLastDigits,
      'paymentMethod': paymentMethod,
      'dateStart': dateStart,
      'dateEnd': dateEnd,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'plan': plan?.toMap(),
    };
  }

  factory SubscriptionEntity.fromMap(Map<String, dynamic> map) {
    return SubscriptionEntity(
      id: map['id'],
      subscriberId: map['subscriberId'],
      url: map['url'],
      status: map['status'],
      active: map['active'],
      card: map['card'] != null ? CreditCardEntity.fromMap(map['card']) : null,
      subscriber: map['subscriber'] != null ? SubscriberEntity.fromMap(map['subscriber']) : null,
      cardBrand: map['cardBrand'],
      cardFirstDigits: map['cardFirstDigits'],
      cardLastDigits: map['cardLastDigits'],
      paymentMethod: map['paymentMethod'],
      dateStart: map['dateStart'],
      dateEnd: map['dateEnd'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      plan: map['plan'] != null ? PlanSubscriptionEntity.fromMap(map['plan']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SubscriptionEntity.fromJson(String source) => SubscriptionEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SubscriptionEntity(id: $id, subscriberId: $subscriberId, url: $url, status: $status, active: $active, card: $card, subscriber: $subscriber, cardBrand: $cardBrand, cardFirstDigits: $cardFirstDigits, cardLastDigits: $cardLastDigits, paymentMethod: $paymentMethod, dateStart: $dateStart, dateEnd: $dateEnd, createdAt: $createdAt, updatedAt: $updatedAt, plan: $plan)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SubscriptionEntity &&
      other.id == id &&
      other.subscriberId == subscriberId &&
      other.url == url &&
      other.status == status &&
      other.active == active &&
      other.card == card &&
      other.subscriber == subscriber &&
      other.cardBrand == cardBrand &&
      other.cardFirstDigits == cardFirstDigits &&
      other.cardLastDigits == cardLastDigits &&
      other.paymentMethod == paymentMethod &&
      other.dateStart == dateStart &&
      other.dateEnd == dateEnd &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.plan == plan;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      subscriberId.hashCode ^
      url.hashCode ^
      status.hashCode ^
      active.hashCode ^
      card.hashCode ^
      subscriber.hashCode ^
      cardBrand.hashCode ^
      cardFirstDigits.hashCode ^
      cardLastDigits.hashCode ^
      paymentMethod.hashCode ^
      dateStart.hashCode ^
      dateEnd.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      plan.hashCode;
  }
}

class PlanSubscriptionEntity {

  PlanSubscriptionEntity({
    required this.id,
    this.gatewayPlanId,
    required this.name,
    required this.amount,
    this.paymentMethods,
    this.trialDays,
    this.description,
    this.type,
  });

  factory PlanSubscriptionEntity.fromMap(Map<String, dynamic> map) {
    return PlanSubscriptionEntity(
      id: map['id'] ?? '',
      gatewayPlanId: int.parse(((map['gatewayPlanId']) ?? 0).toString()),
      name: map['name'] ?? '',
      amount: int.parse(((map['amount']) ?? 0).toString()),
      paymentMethods: map['paymentMethods'] == null ? null : List<String>.from(map['paymentMethods']),
      trialDays: int.parse(((map['trialDays']) ?? 0).toString()),
      description: map['description'] ?? '',
      type: map['type'] ?? '',
    );
  }

  factory PlanSubscriptionEntity.fromJson(String source) => PlanSubscriptionEntity.fromMap(json.decode(source));
  String id;
  int? gatewayPlanId;
  String name;
  int amount;
  List<String>? paymentMethods;
  int? trialDays;
  String? description;
  String? type;

  PlanSubscriptionEntity copyWith({
    String? id,
    int? gatewayPlanId,
    String? name,
    int? amount,
    List<String>? paymentMethods,
    int? trialDays,
    String? description,
    String? type,
  }) {
    return PlanSubscriptionEntity(
      id: id ?? this.id,
      gatewayPlanId: gatewayPlanId ?? this.gatewayPlanId,
      name: name ?? this.name,
      amount: amount ?? this.amount,
      paymentMethods: paymentMethods ?? this.paymentMethods,
      trialDays: trialDays ?? this.trialDays,
      description: description ?? this.description,
      type: type ?? this.type,
    );
  }

  @override
  String toString() {
    return 'PlanSubscriptionEntity(id: $id, gatewayPlanId: $gatewayPlanId, name: $name, amount: $amount, paymentMethods: $paymentMethods, trialDays: $trialDays, description: $description, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PlanSubscriptionEntity &&
      other.id == id &&
      other.gatewayPlanId == gatewayPlanId &&
      other.name == name &&
      other.amount == amount &&
      listEquals(other.paymentMethods, paymentMethods) &&
      other.trialDays == trialDays &&
      other.description == description &&
      other.type == type;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      gatewayPlanId.hashCode ^
      name.hashCode ^
      amount.hashCode ^
      paymentMethods.hashCode ^
      trialDays.hashCode ^
      description.hashCode ^
      type.hashCode;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'gatewayPlanId': gatewayPlanId,
      'name': name,
      'amount': amount,
      'paymentMethods': paymentMethods,
      'trialDays': trialDays,
      'description': description,
      'type': type,
    };
  }

  String toJson() => json.encode(toMap());
}

class SubscriberEntity {
  
  SubscriberEntity({
    required this.id,
    required this.type,
  });

  factory SubscriberEntity.fromMap(Map<String, dynamic> map) {
    return SubscriberEntity(
      id: map['id'] ?? '',
      type: map['type'] ?? '',
    );
  }

  factory SubscriberEntity.fromJson(String source) => SubscriberEntity.fromMap(json.decode(source));
  String id;
  String type;

  SubscriberEntity copyWith({
    String? id,
    String? type,
  }) {
    return SubscriberEntity(
      id: id ?? this.id,
      type: type ?? this.type,
    );
  }

  @override
  String toString() => 'SubscriberEntity(id: $id, type: $type)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SubscriberEntity &&
      other.id == id &&
      other.type == type;
  }

  @override
  int get hashCode => id.hashCode ^ type.hashCode;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
    };
  }

  String toJson() => json.encode(toMap());
} 
