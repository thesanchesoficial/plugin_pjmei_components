import 'dart:convert';

import 'finance_dashboard_entity.dart';
import 'finance_transaction_result_entity.dart';

class FinanceDashboardBasicEntity {
  FinanceDashboardEntity? dashboard;
  FinanceTransactionResultApi? transactions;

  FinanceDashboardBasicEntity({
    required this.dashboard,
    required this.transactions,
  });

  FinanceDashboardBasicEntity copyWith({
    FinanceDashboardEntity? dashboard,
    FinanceTransactionResultApi? transactions,
  }) {
    return FinanceDashboardBasicEntity(
      dashboard: dashboard ?? this.dashboard,
      transactions: transactions ?? this.transactions,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'dashboard': dashboard!.toMap(),
      'transactions': transactions!.toMap(),
    };
  }

  factory FinanceDashboardBasicEntity.fromMap(Map<String, dynamic> map) {
    return FinanceDashboardBasicEntity(
      dashboard: map['dashboard'] == null
          ? null
          : FinanceDashboardEntity.fromMap(map['dashboard']),
      transactions: map['transactions'] == null
          ? null
          : FinanceTransactionResultApi.fromMap(map['transactions']),
    );
  }

  String toJson() => json.encode(toMap());

  factory FinanceDashboardBasicEntity.fromJson(String source) =>
      FinanceDashboardBasicEntity.fromMap(json.decode(source));

  @override
  String toString() =>
      'FinanceDashboardBasicEntity(dashboard: $dashboard, transactions: $transactions)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FinanceDashboardBasicEntity &&
        other.dashboard == dashboard &&
        other.transactions == transactions;
  }

  @override
  int get hashCode => dashboard.hashCode ^ transactions.hashCode;
}