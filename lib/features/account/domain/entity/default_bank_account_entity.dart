import 'dart:convert';

class DefaultBankAccount {
  final String? bankCode;
  final String? agency;
  final String? dvAgency;
  final String? account;
  final String? dvAccount;
  final String? type;
  DefaultBankAccount({
    this.bankCode,
    this.agency,
    this.dvAgency,
    this.account,
    this.dvAccount,
    this.type,
  });

  DefaultBankAccount copyWith({
    String? bankCode,
    String? agency,
    String? dvAgency,
    String? account,
    String? dvAccount,
    String? type,
  }) {
    return DefaultBankAccount(
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

  factory DefaultBankAccount.fromMap(Map<String, dynamic> map) {
    return DefaultBankAccount(
      bankCode: map['bankCode'],
      agency: map['agency'],
      dvAgency: map['dvAgency'],
      account: map['account'],
      dvAccount: map['dvAccount'],
      type: map['type'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DefaultBankAccount.fromJson(String source) => DefaultBankAccount.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DefaultBankAccount(bankCode: $bankCode, agency: $agency, dvAgency: $dvAgency, account: $account, dvAccount: $dvAccount, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DefaultBankAccount &&
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
