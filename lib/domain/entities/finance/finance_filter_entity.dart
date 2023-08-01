import 'dart:convert';
import 'package:plugin_pjmei_components/domain/domain.dart';

class FinanceFilterEntity {
  String? id;
  DateTime? startDate;
  DateTime? endDate;
  List<String>? bankAccount;
  List<String>? categoryId;
  List<String>? creditCard;
  num? quantity;
  bool? paid;

  FinanceCategoryEntity? category;

  FinanceFilterEntity(
  {
    this.id,
    this.bankAccount,
    this.endDate,
    this.startDate,
    this.categoryId,
    this.creditCard,
    this.quantity,
    this.category,
    this.paid,
  });

  FinanceFilterEntity copyWith({
    String? id,
    DateTime? startDate,
    DateTime? endDate,
    List<String>? bankAccount,
    List<String>? categoryId,
    List<String>? creditCard,
    num? quantity,
    FinanceCategoryEntity? category,
    bool? paid,
  }) {
    return FinanceFilterEntity(
      id: id ?? this.id,
      bankAccount: bankAccount ?? this.bankAccount,
      endDate: endDate ?? this.endDate,
      startDate: startDate ?? this.startDate,
      categoryId: categoryId ?? this.categoryId,
      creditCard: creditCard ?? this.creditCard,
      quantity: quantity ?? this.quantity,
      category: category ?? this.category,
      paid: paid ?? this.paid,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'startDate': '${startDate!.year}-${startDate!.month.toString().padLeft(2, '0')}-${startDate!.day.toString().padLeft(2, '0')}',
      'endDate': '${endDate!.year}-${endDate!.month.toString().padLeft(2, '0')}-${endDate!.day.toString().padLeft(2, '0')}',
      'bankAccount': bankAccount,
      'category': categoryId,
      'creditCard': creditCard,
      'paid': paid,
    };
  }

  factory FinanceFilterEntity.fromMap(Map<String, dynamic> map) {
    return FinanceFilterEntity(
      endDate: map['endDate'] ?? '',
      startDate: map['startDate'] ?? '',
      bankAccount: map['bankAccount'] ?? [],
      categoryId: map['category'] ?? [],
      creditCard: map['creditCard'] ?? [],
      paid: map['paid'] ?? [],
    );
  }

  String toJson() => json.encode(toMap());

  factory FinanceFilterEntity.fromJson(String source) => FinanceFilterEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FinanceFilterEntity(id: $id, startDate: $startDate, endDate: $endDate)';
  }
}
