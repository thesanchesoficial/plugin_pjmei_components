import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

abstract class ListFinanceDashboardBasic {
  Future<FinanceDashboardBasicEntity> exec();
}

abstract class ListFinanceDashboardBanks {
  Future<FinanceDashboardEntity> exec();
}

abstract class ListFinanceDashboardByFilterBasic {
  Future<FinanceDashboardBasicEntity> exec(FinanceFilterEntity filter);
}

class FinanceTransactionResultApi {
  List<FinanceTransactionEntity>? items;
  int? count;

  FinanceTransactionResultApi({
    @required this.items,
    @required this.count,
  });

  FinanceTransactionResultApi copyWith({
    List<FinanceTransactionEntity>? transactions,
    int? count,
  }) {
    return FinanceTransactionResultApi(
      items: items ?? this.items,
      count: count ?? this.count,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'items': items!.map((x) => x.toMap()).toList(),
      'count': count,
    };
  }

  factory FinanceTransactionResultApi.fromMap(Map<String, dynamic> map) {
    return FinanceTransactionResultApi(
      items: map['items'] == null
          ? []
          : List<FinanceTransactionEntity>.from(
              map['items']?.map((x) => FinanceTransactionEntity.fromMap(x))),
      count: map['count']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory FinanceTransactionResultApi.fromJson(String source) =>
      FinanceTransactionResultApi.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FinanceTransactionResultApi &&
        listEquals(other.items, items) &&
        other.count == count;
  }

  @override
  int get hashCode => items.hashCode ^ count.hashCode;

  @override
  String toString() =>
      'FinanceTransactionResultApi(items: $items, count: $count)';
}

class FinanceDashboardBasicEntity {
  FinanceDashboardEntity? dashboard;
  FinanceTransactionResultApi? transactions;

  FinanceDashboardBasicEntity({
    @required this.dashboard,
    @required this.transactions,
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

class FinanceDashboardEntity {
  num? income;
  num? expense;
  num? expectedIncome;
  num? expectedExpense;
  num? profits;
  num? balance;
  num? invoice;

  FinanceDashboardEntity({
    @required this.income,
    @required this.expense,
    @required this.expectedIncome,
    @required this.expectedExpense,
    @required this.profits,
    @required this.balance,
    @required this.invoice,
  });

  FinanceDashboardEntity copyWith({
    num? income,
    num? expense,
    num? expectedIncome,
    num? expectedExpense,
    num? profits,
    num? balance,
    num? invoice,
  }) {
    return FinanceDashboardEntity(
      income: income ?? this.income,
      expense: expense ?? this.expense,
      expectedIncome: expectedIncome ?? this.expectedIncome,
      expectedExpense: expectedExpense ?? this.expectedExpense,
      profits: profits ?? this.profits,
      balance: balance ?? this.balance,
      invoice: invoice ?? this.invoice,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'income': income,
      'expense': expense,
      'expectedIncome': expectedIncome,
      'expectedExpense': expectedExpense,
      'profits': profits,
      'balance': balance,
      'invoice': invoice,
    };
  }

  factory FinanceDashboardEntity.fromMap(Map<String, dynamic> map) {
    return FinanceDashboardEntity(
      income: map['income'] != null ? num.parse(map['income'].toString()) : 0,
      expense:
          map['expense'] != null ? num.parse(map['expense'].toString()) : 0,
      expectedIncome: map['expectedIncome'] != null
          ? num.parse(map['expectedIncome'].toString())
          : 0,
      expectedExpense: map['expectedExpense'] != null
          ? num.parse(map['expectedExpense'].toString())
          : 0,
      profits:
          map['profits'] != null ? num.parse(map['profits'].toString()) : 0,
      balance:
          map['balance'] != null ? num.parse(map['balance'].toString()) : 0,
      invoice:
          map['invoice'] != null ? num.parse(map['invoice'].toString()) : 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory FinanceDashboardEntity.fromJson(String source) =>
      FinanceDashboardEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FinanceDashboardEntity(income: $income, expense: $expense, expectedIncome: $expectedIncome, expectedExpense: $expectedExpense, profits: $profits, balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FinanceDashboardEntity &&
        other.income == income &&
        other.expense == expense &&
        other.expectedIncome == expectedIncome &&
        other.expectedExpense == expectedExpense &&
        other.profits == profits &&
        other.balance == balance;
  }

  @override
  int get hashCode {
    return income.hashCode ^
        expense.hashCode ^
        expectedIncome.hashCode ^
        expectedExpense.hashCode ^
        profits.hashCode ^
        balance.hashCode;
  }
}
