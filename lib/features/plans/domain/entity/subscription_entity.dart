import 'dart:convert';
import 'plan_list_entity.dart';
import 'transaction_entity.dart';

class SubscriptionEntity {
  String? id;
  String? subscriberId;
  String? url;
  String? status;
  bool? active;
  CreditCardEntity? card;
  String? cardBrand;
  String? cardFirstDigits;
  String? cardLastDigits;
  String? paymentMethod;
  String? dateStart;
  String? dateEnd;
  String? createdAt;
  String? updatedAt;
  PlanEntity? plan;

  SubscriptionEntity({
    this.id,
    this.subscriberId,
    this.url,
    this.status,
    this.active,
    this.card,
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
    String? cardBrand,
    String? cardFirstDigits,
    String? cardLastDigits,
    String? paymentMethod,
    String? dateStart,
    String? dateEnd,
    String? createdAt,
    String? updatedAt,
    PlanEntity? plan,
  }) {
    return SubscriptionEntity(
      id: id ?? this.id,
      subscriberId: subscriberId ?? this.subscriberId,
      url: url ?? this.url,
      status: status ?? this.status,
      active: active ?? this.active,
      card: card ?? this.card,
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
      cardBrand: map['cardBrand'],
      cardFirstDigits: map['cardFirstDigits'],
      cardLastDigits: map['cardLastDigits'],
      paymentMethod: map['paymentMethod'],
      dateStart: map['dateStart'],
      dateEnd: map['dateEnd'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      plan: map['plan'] != null ? PlanEntity.fromMap(map['plan']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SubscriptionEntity.fromJson(String source) => SubscriptionEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SubscriptionEntity(id: $id, subscriberId: $subscriberId, url: $url, status: $status, active: $active, card: $card, cardBrand: $cardBrand, cardFirstDigits: $cardFirstDigits, cardLastDigits: $cardLastDigits, paymentMethod: $paymentMethod, dateStart: $dateStart, dateEnd: $dateEnd, createdAt: $createdAt, updatedAt: $updatedAt, plan: $plan)';
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