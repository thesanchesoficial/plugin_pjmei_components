import 'dart:convert';
import 'package:plugin_pjmei_components/domain/domain.dart';

class FinanceBankAccountEntity {

  FinanceBankAccountEntity({
    this.id,
    this.balance,
    this.openingBalance,
    this.bank,
    this.name,
    this.description,
    this.userId,
    this.type,
    this.defaultAccount
    });

  factory FinanceBankAccountEntity.fromMap(Map<String, dynamic> map) {
    return FinanceBankAccountEntity(
      id: map['id'] ?? '',
      balance: map['balance'] != null ? num.parse(map['balance'].toString()) : null,
      openingBalance: map['openingBalance'] != null ? num.parse(map['openingBalance'].toString()) : null,
      bank: map['bankInstitution'] == null ?  map['bank'] == null ? null : FinanceBankInstitutionEntity.fromMap(map['bank']) : FinanceBankInstitutionEntity.fromMap(map['bankInstitution']),
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      userId: map['userId'] ?? '',
      type: map['type'] ?? '',
      defaultAccount: map['default'] ?? '',
    );
  }

  factory FinanceBankAccountEntity.fromJson(String source) => FinanceBankAccountEntity.fromMap(json.decode(source));
  String? id;
  num? balance;
  num? openingBalance;
  FinanceBankInstitutionEntity? bank;
  String? name;
  String? description;
  String? userId;
  String? type;
  bool? defaultAccount;

  FinanceBankAccountEntity copyWith({
    String? id,
    num? balance,
    num? openingBalance,
    FinanceBankInstitutionEntity? bank,
    String? name,
    String? description,
    String? userId,
    String? type,
    bool? defaultAccount,
  }) {
    return FinanceBankAccountEntity(
      id: id ?? this.id,
      balance: balance ?? this.balance,
      openingBalance: openingBalance ?? this.openingBalance,
      bank: bank ?? this.bank,
      name: name ?? this.name,
      description: description ?? this.description,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      defaultAccount: defaultAccount ?? this.defaultAccount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'balance': balance,
      'openingBalance': openingBalance,
      'bank': bank?.toMap(),
      'name': name,
      'description': description,
      'userId': userId,
      'type': type,
      'default': defaultAccount,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'FinanceBankAccountEntity(bankAccound: $id, name: $name, value: $userId)';
  }
}
