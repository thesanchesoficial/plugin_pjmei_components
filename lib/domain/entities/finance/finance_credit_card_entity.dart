import 'dart:convert';
import 'package:plugin_pjmei_components/domain/domain.dart';

class FinanceCreditCardEntity {
  String? id;
  String? name;
  num? limit;
  num? dueDay; // Dia do vencimento do cartão
  num? closureDay; // Dia do fechamento do cartão
  String? bankAccountId;
  String? creditCardFlagId;
  String? userId;
  bool? hasFinancialMovement;
  FinanceCardFlagEntity? creditCardFlag;

  FinanceCreditCardEntity(
  {
    this.id,
    this.name,
    this.limit,
    this.dueDay,
    this.closureDay,
    this.bankAccountId,
    this.creditCardFlagId,
    this.userId,
    this.hasFinancialMovement,
    this.creditCardFlag,
  });

  FinanceCreditCardEntity copyWith({
    String? id,
    String? name,
    num? limit,
    num? dueDay,
    num? closureDay,
    String? bankAccountId,
    String? creditCardFlagId,
    String? userId,
    bool? hasFinancialMovement,
    FinanceCardFlagEntity? creditCardFlag,
  }) {
    return FinanceCreditCardEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      limit: limit ?? this.limit,
      dueDay: dueDay ?? this.dueDay,
      closureDay: closureDay ?? this.closureDay,
      bankAccountId: bankAccountId ?? this.bankAccountId,
      creditCardFlagId: creditCardFlagId ?? this.creditCardFlagId,
      userId: userId ?? this.userId,
      hasFinancialMovement: hasFinancialMovement ?? this.hasFinancialMovement,
      creditCardFlag: creditCardFlag ?? this.creditCardFlag,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'limit': limit,
      'dueDay': dueDay,
      'closureDay': closureDay,
      'bankAccountId': bankAccountId,
      'creditCardFlagId': creditCardFlagId,
      'userId': userId,
      'creditCardFlag': creditCardFlag,
    };
  }

  factory FinanceCreditCardEntity.fromMap(Map<String, dynamic> map) {
    // print(map['hasFinancialMovement']);
    return FinanceCreditCardEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      limit: num.parse(map['limit'].toString()),
      dueDay: num.parse(map['dueDay'].toString()),
      closureDay: num.parse(map['closureDay'].toString()),
      // creditCardFlagId: map['creditCardFlagId'] ?? '',
      hasFinancialMovement: map['hasFinancialMovement'],
      // creditCardFlagId: map['creditCardFlagId'] ?? '',
      creditCardFlag: map['creditCardFlag'] != null ? FinanceCardFlagEntity.fromMap(map['creditCardFlag']) : FinanceCardFlagEntity(),
    );
  }

  String toJson() => json.encode(toMap());

  factory FinanceCreditCardEntity.fromJson(String source) => FinanceCreditCardEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'FinanceCreditCardEntity(id: $id, name: $name, limit: $limit, dueDay: $dueDay, closureDay: $closureDay)';
  }
}