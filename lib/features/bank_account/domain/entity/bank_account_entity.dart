import 'dart:convert';

class BankAccountEntity {
  String bankCode;
  String agency;
  String dvAgency;
  String account;
  String dvAccount;
  String type;
  BankAccountEntity({
    required this.bankCode,
    required this.agency,
    required this.dvAgency,
    required this.account,
    required this.dvAccount,
    required this.type,
  });

  BankAccountEntity copyWith({
    String? bankCode,
    String? agency,
    String? dvAgency,
    String? account,
    String? dvAccount,
    String? type,
  }) {
    return BankAccountEntity(
      bankCode: bankCode ?? this.bankCode,
      agency: agency ?? this.agency,
      dvAgency: dvAgency ?? this.dvAgency,
      account: account ?? this.account,
      dvAccount: dvAccount ?? this.dvAccount,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'bankCode': bankCode,
      'agency': agency,
      'dvAgency': dvAgency,
      'account': account,
      'dvAccount': dvAccount,
      'type': type,
    };
  }

  factory BankAccountEntity.fromMap(Map<String, dynamic> map) {
    return BankAccountEntity(
      bankCode: map['bankCode'] ?? '',
      agency: map['agency'] ?? '',
      dvAgency: map['dvAgency'] ?? '',
      account: map['account'] ?? '',
      dvAccount: map['dvAccount'] ?? '',
      type: map['type'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory BankAccountEntity.fromJson(String source) => BankAccountEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BankAccountEntity(bankCode: $bankCode, agency: $agency, dvAgency: $dvAgency, account: $account, dvAccount: $dvAccount, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is BankAccountEntity &&
      other.bankCode == bankCode &&
      other.agency == agency &&
      other.dvAgency == dvAgency &&
      other.account == account &&
      other.dvAccount == dvAccount &&
      other.type == type;
  }

  @override
  int get hashCode {
    return bankCode.hashCode ^
      agency.hashCode ^
      dvAgency.hashCode ^
      account.hashCode ^
      dvAccount.hashCode ^
      type.hashCode;
  }
}
