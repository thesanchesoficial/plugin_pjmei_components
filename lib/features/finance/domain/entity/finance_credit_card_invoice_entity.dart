import 'dart:convert';

class FinanceCreditCardInvoiceEntity {
  num? amountPaid;
  String? creditCardId;
  String? bankAccountId;
  String? month;
  String? year;
  String? payday;

  FinanceCreditCardInvoiceEntity({
    this.amountPaid,
    this.creditCardId,
    this.month,
    this.year,
    this.bankAccountId,
    this.payday,
  });

  FinanceCreditCardInvoiceEntity copyWith(
    {
      num? amountPaid,
      String? creditCardId,
      String? month,
      String? year,
      String? bankAccountId,
      String? payday,
    }) {
    return FinanceCreditCardInvoiceEntity(
      amountPaid: amountPaid ?? this.amountPaid,
      creditCardId: creditCardId ?? this.creditCardId,
      month: month ?? this.month,
      year: year ?? this.year,
      bankAccountId: bankAccountId ?? this.bankAccountId,
      payday: payday ?? this.payday,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'amountPaid': amountPaid,
      'creditCardId': creditCardId,
      'bankAccountId': bankAccountId,
      'month': month,
      'year': year,
      'payday': payday,
    };
  }

  factory FinanceCreditCardInvoiceEntity.fromMap(Map<String, dynamic> map) {
    return FinanceCreditCardInvoiceEntity(
      amountPaid: map['amountPaid'] ?? '',
      creditCardId: map['creditCardId'] ?? '',
      bankAccountId: map['bankAccountId'] ?? '',
      month: map['month'] ?? '',
      year: map['year'] ?? '',
      payday: map['payday'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FinanceCreditCardInvoiceEntity.fromJson(String source) =>
      FinanceCreditCardInvoiceEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FinanceCreditCardInvoiceEntity(amountPaid: $amountPaid, month: $month, year: $year)';
  }
}
