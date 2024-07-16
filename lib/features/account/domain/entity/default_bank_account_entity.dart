import 'dart:convert';

class DefaultBankAccount {
  DefaultBankAccount({
    required this.branchNumber,
    required this.bank,
    required this.accountNumber,
    required this.holderDocument,
    required this.id,
    required this.holderType,
    required this.accountCheckDigit,
    required this.status,
    required this.holderName,
    required this.createdAt,
    required this.updatedAt,
    required this.type,
  });

  factory DefaultBankAccount.fromMap(Map<String, dynamic> map) {
    return DefaultBankAccount(
      branchNumber: map['branchNumber'] ?? '',
      bank: map['bank'] ?? '',
      accountNumber: map['accountNumber'] ?? '',
      holderDocument: map['holderDocument'] ?? '',
      id: map['id'] ?? '',
      holderType: map['holderType'] ?? '',
      accountCheckDigit: map['accountCheckDigit'] ?? '',
      status: map['status'] ?? '',
      holderName: map['holderName'] ?? '',
      createdAt: map['createdAt'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
      type: map['type'] ?? '',
    );
  }

  factory DefaultBankAccount.fromJson(String source) => DefaultBankAccount.fromMap(json.decode(source));
  final String branchNumber;
  final String bank;
  final String accountNumber;
  final String holderDocument;
  final String id;
  final String holderType;
  final String accountCheckDigit;
  final String status;
  final String holderName;
  final String createdAt;
  final String updatedAt;
  final String type;

  DefaultBankAccount copyWith({
    String? branchNumber,
    String? bank,
    String? accountNumber,
    String? holderDocument,
    String? id,
    String? holderType,
    String? accountCheckDigit,
    String? status,
    String? holderName,
    String? createdAt,
    String? updatedAt,
    String? type,
  }) {
    return DefaultBankAccount(
      branchNumber: branchNumber ?? this.branchNumber,
      bank: bank ?? this.bank,
      accountNumber: accountNumber ?? this.accountNumber,
      holderDocument: holderDocument ?? this.holderDocument,
      id: id ?? this.id,
      holderType: holderType ?? this.holderType,
      accountCheckDigit: accountCheckDigit ?? this.accountCheckDigit,
      status: status ?? this.status,
      holderName: holderName ?? this.holderName,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'branchNumber': branchNumber,
      'bank': bank,
      'accountNumber': accountNumber,
      'holderDocument': holderDocument,
      'id': id,
      'holderType': holderType,
      'accountCheckDigit': accountCheckDigit,
      'status': status,
      'holderName': holderName,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'type': type,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'DefaultBankAccount(branchNumber: $branchNumber, bank: $bank, accountNumber: $accountNumber, holderDocument: $holderDocument, id: $id, holderType: $holderType, accountCheckDigit: $accountCheckDigit, status: $status, holderName: $holderName, createdAt: $createdAt, updatedAt: $updatedAt, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DefaultBankAccount &&
      other.branchNumber == branchNumber &&
      other.bank == bank &&
      other.accountNumber == accountNumber &&
      other.holderDocument == holderDocument &&
      other.id == id &&
      other.holderType == holderType &&
      other.accountCheckDigit == accountCheckDigit &&
      other.status == status &&
      other.holderName == holderName &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.type == type;
  }

  @override
  int get hashCode {
    return branchNumber.hashCode ^
      bank.hashCode ^
      accountNumber.hashCode ^
      holderDocument.hashCode ^
      id.hashCode ^
      holderType.hashCode ^
      accountCheckDigit.hashCode ^
      status.hashCode ^
      holderName.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      type.hashCode;
  }
}
