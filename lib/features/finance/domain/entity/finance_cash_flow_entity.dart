import 'dart:convert';

import 'finance_bank_account_entity.dart';

class FinanceCashFlowEntity {
  num? balance;
  num? income;
  num? expense;
  FinanceBankAccountEntity? bankAccount;

  FinanceCashFlowEntity({
    this.balance,
    this.income,
    this.expense,
    this.bankAccount,
    });

  FinanceCashFlowEntity copyWith({
    num? balance,
    num? income,
    num? expense,
    FinanceBankAccountEntity? bankAccount,
  }) {
    return FinanceCashFlowEntity(
      balance: balance ?? this.balance,
      income: income ?? this.income,
      expense: expense ?? this.expense,
      bankAccount: bankAccount ?? this.bankAccount
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'balance': balance,
      'income': income,
      'expense': expense,
      'bankAccount': bankAccount
    };
  }

  factory FinanceCashFlowEntity.fromMap(Map<String, dynamic> map) {
    return FinanceCashFlowEntity(
      balance: num.parse(map['balance'].toString()),
      income: num.parse(map['income'].toString()),
      expense: num.parse(map['expense'].toString()),
      bankAccount: FinanceBankAccountEntity.fromMap(map['bankAccount'])
    );
  }

  String toJson() => json.encode(toMap());

  factory FinanceCashFlowEntity.fromJson(String source) => FinanceCashFlowEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FinanceCashFlowEntity(balance: $balance, income: $income, expense: $expense)';
  }
}