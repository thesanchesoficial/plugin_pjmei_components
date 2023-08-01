import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:plugin_pjmei_components/domain/entities/extract_entity.dart';
import 'package:plugin_pjmei_components/domain/entities/financial_assistant_entity.dart';
import 'package:plugin_pjmei_components/domain/entities/subscription/subscription_entity.dart';

class BasicDashboardEntity {

  BasicDashboardEntity({
    this.balance,
    this.plan,
    this.order,
    this.financialAssistants,
  });

  factory BasicDashboardEntity.fromMap(Map<String, dynamic> map) {
    return BasicDashboardEntity(
      balance: map['balance'] != null ? ExtractEntity.fromMap(map['balance']) : null,
      plan: map['plan'] != null ? PlanEntity.fromMap(map['plan']) : null,
      order: int.parse((map['order'] ?? 0).toString()),
      financialAssistants: map['financialAssistants'] == null ? [] : List<FinancialAssistantEntity>.from(map['financialAssistants']?.map((x) => FinancialAssistantEntity.fromMap(x))),
    );
  }

  factory BasicDashboardEntity.fromJson(String source) => BasicDashboardEntity.fromMap(json.decode(source));
  ExtractEntity? balance;
  PlanEntity? plan;
  int? order;
  List<FinancialAssistantEntity>? financialAssistants;
  
  BasicDashboardEntity copyWith({
    ExtractEntity? balance,
    PlanEntity? plan,
    int? order,
    List<FinancialAssistantEntity>? financialAssistants,
  }) {
    return BasicDashboardEntity(
      balance: balance ?? this.balance,
      plan: plan ?? this.plan,
      order: order ?? this.order,
      financialAssistants: financialAssistants ?? this.financialAssistants,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'balance': balance?.toMap(),
      'plan': plan?.toMap(),
      'order': order,
      'financialAssistants': financialAssistants?.map((x) => x.toMap()).toList(),
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'BasicDashboardEntity(balance: $balance, plan: $plan, order: $order, financialAssistants: $financialAssistants)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is BasicDashboardEntity &&
      other.balance == balance &&
      other.plan == plan &&
      other.order == order &&
      listEquals(other.financialAssistants, financialAssistants);
  }

  @override
  int get hashCode {
    return balance.hashCode ^
      plan.hashCode ^
      order.hashCode ^
      financialAssistants.hashCode;
  }
}
