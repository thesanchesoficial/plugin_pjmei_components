import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'finance_transaction_entity.dart';

class FinanceTransactionResultApi {
  List<FinanceTransactionEntity>? items;
  int? count;

  FinanceTransactionResultApi({
    required this.items,
    required this.count,
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