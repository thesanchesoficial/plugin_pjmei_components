import 'dart:convert';

class FinanceDashboardEntity {
  num? income;
  num? expense;
  num? expectedIncome;
  num? expectedExpense;
  num? profits;
  num? balance;
  num? invoice;

  FinanceDashboardEntity({
    required this.income,
    required this.expense,
    required this.expectedIncome,
    required this.expectedExpense,
    required this.profits,
    required this.balance,
    required this.invoice,
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