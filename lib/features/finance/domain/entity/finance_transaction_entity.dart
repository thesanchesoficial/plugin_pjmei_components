import 'dart:convert';

import 'finance_bank_account_entity.dart';
import 'finance_category_entity.dart';
import 'finance_credit_card_entity.dart';
import 'finance_subcategory_entity.dart';

class FinanceTransactionEntity {
  String? id;
  String? bankAccountId;
  String? type; // income | expense
  num? value;
  String? description;
  String? date;
  bool? paid; // aberto ou fechado
  String? subcategoryId;
  FinanceCategoryEntity? category;
  FinanceSubcategoryEntity? subcategory;
  FinanceBankAccountEntity? bank;
  FinanceCreditCardEntity? card;
  bool? recurrent;
  String? repetitionPeriod; // daily | weekly | monthly | annual
  num? amountRepetition;
  num? repetitionPosition;
  String? creditCardId;
  String? categoryCreditCardId;
  String? transactionType; // bank | card
  bool? invoice; // fatura ou nao
  // Novo
  String? cardSubcategoryName;
  DateTime? invoiceClosing;

  FinanceTransactionEntity({
    this.id,
    this.bankAccountId,
    this.type,
    this.value,
    this.description,
    this.date,
    this.paid,
    this.subcategoryId,
    this.category,
    this.subcategory,
    this.bank,
    this.recurrent,
    this.repetitionPeriod,
    this.amountRepetition,
    this.repetitionPosition,
    this.creditCardId,
    this.categoryCreditCardId,
    this.transactionType,
    this.invoice,
    this.cardSubcategoryName,
    this.card,
    this.invoiceClosing,
    });

  FinanceTransactionEntity copyWith({
    String? id,
    String? bankAccountId,
    String? type,
    num? value,
    String? description,
    String? date,
    bool? paid,
    String? subcategoryId,
    FinanceCategoryEntity? category,
    FinanceSubcategoryEntity? subcategory,
    FinanceBankAccountEntity? bank,
    bool? recurrent,
    String? repetitionPeriod,
    num? amountRepetition,
    num? repetitionPosition,
    String? creditCardId,
    String? categoryCreditCardId,
    String? transactionType,
    bool? invoice,
    String? cardSubcategoryName,
    FinanceCreditCardEntity? card,
    DateTime? invoiceClosing,
  }) {
    return FinanceTransactionEntity(
      id: id ?? this.id,
      bankAccountId: bankAccountId ?? this.bankAccountId,
      type: type ?? this.type,
      value: value ?? this.value,
      description: description ?? this.description,
      date: date ?? this.date,
      paid: paid ?? this.paid,
      subcategory: subcategory ?? this.subcategory,
      category: category ?? this.category,
      subcategoryId: subcategoryId ?? this.subcategoryId,
      recurrent: recurrent ?? this.recurrent,
      repetitionPeriod: repetitionPeriod ?? this.repetitionPeriod,
      bank: bank ?? this.bank,
      amountRepetition: amountRepetition ?? this.amountRepetition,
      repetitionPosition: repetitionPosition ?? this.repetitionPosition,
      creditCardId: creditCardId ?? this.creditCardId,
      categoryCreditCardId: categoryCreditCardId ?? this.categoryCreditCardId,
      transactionType: transactionType ?? this.transactionType,
      invoice: invoice ?? this.invoice,
      cardSubcategoryName: cardSubcategoryName ?? this.cardSubcategoryName,
      card: card ?? this.card,
      invoiceClosing: invoiceClosing ?? this.invoiceClosing,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'bankAccountId': bankAccountId,
      'type': type,
      'value': value,
      'description': description,
      'date': date,
      'paid': paid,
      // 'category': category.toMap(),
      // 'subcategory': subcategory.toMap(),
      // 'bank': bank.toMap(),
      'subcategoryId': subcategoryId,
      'recurrent': recurrent,
      'repetitionPeriod': repetitionPeriod,
      'amountRepetition': amountRepetition,
      'repetitionPosition': repetitionPosition,
      'categoryCreditCardId': categoryCreditCardId,
      'creditCardId': creditCardId,
      'origin': {
        'id': transactionType == 'bank' ? bankAccountId : creditCardId,
        'type': transactionType
      },
      'invoice': invoice,
      'invoiceClosing': invoiceClosing,
    };
  }

  factory FinanceTransactionEntity.fromMap(Map<String, dynamic> map) {
    return FinanceTransactionEntity(
      id: map['id'] ?? '',
      bankAccountId: map['bankAccountId'] ?? '',
      type: map['type'] ?? '',
      value: num.parse((map['value'] ?? 0).toString()),
      description: map['description'] ?? '',
      date: map['date'] ?? '',
      paid: map['paid'] ?? false,
      subcategory: map['subcategory'] == null ? null : FinanceSubcategoryEntity.fromMap(map['subcategory']),
      category: map['subcategory'] == null ? null : FinanceCategoryEntity.fromMap(map['subcategory']['category'] ?? null),
      bank: map['bankAccount'] == null ? null : FinanceBankAccountEntity.fromMap(map['bankAccount']),
      subcategoryId: map['subcategoryId'] ?? '',
      recurrent: map['recurrent'] ?? false,
      repetitionPeriod: map['repetitionPeriod'] ?? '',
      amountRepetition: map['amountRepetition'] ?? 0,
      repetitionPosition: map['repetitionPosition'] ?? 0,
      invoice: map['invoice'] ?? false,
      // categoryCreditCardId: map['categoryCreditCardId'] ?? 0,
      // creditCardId: map['creditCardId'] ?? 0,
      cardSubcategoryName: map['subcategory'] != null ? map['subcategory']['name'] : '',
      card: map['creditCard'] == null ? null : FinanceCreditCardEntity.fromMap(map['creditCard']),
      invoiceClosing: map['invoiceClosing'] != null ? DateTime.parse(map['invoiceClosing']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory FinanceTransactionEntity.fromJson(String source) => FinanceTransactionEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FinanceTransactionEntity(bankAccound: $bankAccountId, type: $type, value: $value)';
  }
}
