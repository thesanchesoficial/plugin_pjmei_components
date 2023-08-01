import 'dart:convert';
import 'package:flutter/foundation.dart';


class FinanceDashboardCreditCardEntity {
  DateTime? closureDay;
  DateTime? dueDay;
  num? invoiceAmount;
  String? status;
  num? limit;

  FinanceDashboardCreditCardEntity({
    @required this.closureDay,
    @required this.dueDay,
    @required this.invoiceAmount,
    @required this.status,
    @required this.limit,
  });

  FinanceDashboardCreditCardEntity copyWith({
    DateTime? closureDay,
    DateTime? dueDay,
    num? invoiceAmount,
    String? status,
    num? limit,
  }) {
    return FinanceDashboardCreditCardEntity(
      closureDay: closureDay ?? this.closureDay,
      dueDay: dueDay ?? this.dueDay,
      invoiceAmount: invoiceAmount ?? this.invoiceAmount,
      status: status ?? this.status,
      limit: limit ?? this.limit
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'closureDay': closureDay,
      'dueDay': dueDay,
      'invoiceAmount': invoiceAmount,
      'status': status,
      'limit': limit,
    };
  }

  factory FinanceDashboardCreditCardEntity.fromMap(Map<String, dynamic> map) {
    return FinanceDashboardCreditCardEntity(
      closureDay: map['closureDay'] != null ? DateTime.parse(map['closureDay'].toString()) : DateTime.now(),
      dueDay: map['dueDay'] != null ? DateTime.parse(map['dueDay'].toString()) : DateTime.now(),
      invoiceAmount: num.parse(map['invoiceAmount'].toString()),
      status: map['status'] ?? '',
      limit: map['limit'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory FinanceDashboardCreditCardEntity.fromJson(String source) => FinanceDashboardCreditCardEntity.fromMap(json.decode(source));

  @override
  String toString() => 'FinanceDashboardCreditCardEntity(closureDay: $closureDay, dueDay: $dueDay)';
}