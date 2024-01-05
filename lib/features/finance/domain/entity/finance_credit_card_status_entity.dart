import 'dart:convert';

import 'finance_card_flag_entity.dart';
import 'finance_credit_card_entity.dart';

class FinanceCreditCardStatusEntity {
  FinanceCreditCardEntity? creditCard;
  DateTime? dueDay;
  num? invoiceAmount;
  String? status;
  FinanceCardFlagEntity? creditCardFlag;
  num? balance;

  FinanceCreditCardStatusEntity(
  {
    this.creditCard,
    this.dueDay,
    this.invoiceAmount,
    this.status,
    this.creditCardFlag,
    this.balance,
  });

  FinanceCreditCardStatusEntity copyWith({
    FinanceCreditCardEntity? creditCard,
    DateTime? dueDay,
    num? invoiceAmount,
    String? status,
    FinanceCardFlagEntity? creditCardFlag,
    num? balance,
  }) {
    return FinanceCreditCardStatusEntity(
      dueDay: dueDay ?? this.dueDay,
      creditCard: creditCard ?? this.creditCard,
      invoiceAmount: invoiceAmount ?? this.invoiceAmount,
      status: status ?? this.status,
      creditCardFlag: creditCardFlag ?? this.creditCardFlag,
      balance: balance ?? this.balance,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'creditCard': creditCard!.toMap(),
      'dueDay': dueDay,
      'invoiceAmount': invoiceAmount,
      'status': status,
      'balance': balance,
    };
  }

  factory FinanceCreditCardStatusEntity.fromMap(Map<String, dynamic> map) {
    return FinanceCreditCardStatusEntity(
      creditCard: FinanceCreditCardEntity.fromMap(map['creditCard']),
      dueDay: DateTime.parse(map['dueDay']),
      invoiceAmount: num.parse(map['invoiceAmount'].toString()),
      status: map['status'] ?? '',
      creditCardFlag: FinanceCardFlagEntity.fromMap(map['creditCard']['creditCardFlag']),
      balance: num.parse(map['balance'].toString()),
    );
  }

  String toJson() => json.encode(toMap());

  factory FinanceCreditCardStatusEntity.fromJson(String source) => FinanceCreditCardStatusEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FinanceCreditCardStatusEntity(dueDate: ${dueDay.toString()}, invoiceAmount: $invoiceAmount, status: $status)';
  }
}
