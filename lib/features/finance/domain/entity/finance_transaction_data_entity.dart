import 'dart:convert';

import 'finance_transaction_entity.dart';

class FinanceTransactionDataEntity {
  num? count;
  List<FinanceTransactionEntity>? items;

  FinanceTransactionDataEntity({
    this.count,
    this.items,
  });

  FinanceTransactionDataEntity copyWith({
    num? count,
    List<FinanceTransactionEntity>? items,
  }) {
    return FinanceTransactionDataEntity(
      count: count ?? this.count,
      items: items ?? this.items
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'count': count,
      'items': items!.map((x) => x.toMap()).toList(),
    };
  }

  factory FinanceTransactionDataEntity.fromMap(Map<String, dynamic> map) {
    return FinanceTransactionDataEntity(
      count: map['count'] ?? 0,
      items: map['items'] != null ? List<FinanceTransactionEntity>.from(map['items']?.map((x) => FinanceTransactionEntity.fromMap(x))) : [],
    );
  }

  String toJson() => json.encode(toMap());

  factory FinanceTransactionDataEntity.fromJson(String source) => FinanceTransactionDataEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FinanceTransactionDataEntity(count: $count)';
  }
}
