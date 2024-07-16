import 'dart:convert';

class WithdrawalsEntity {
  final String id;
  final int number;
  final String status;
  final String createdAt;
  final BankAccountPayment bankAccount;
  WithdrawalsEntity({
    required this.id,
    required this.number,
    required this.status,
    required this.createdAt,
    required this.bankAccount,
  });

  WithdrawalsEntity copyWith({
    String? id,
    int? number,
    String? status,
    String? createdAt,
    BankAccountPayment? bankAccount,
  }) {
    return WithdrawalsEntity(
      id: id ?? this.id,
      number: number ?? this.number,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      bankAccount: bankAccount ?? this.bankAccount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'number': number,
      'status': status,
      'createdAt': createdAt,
      'bankAccount': bankAccount.toMap(),
    };
  }

  factory WithdrawalsEntity.fromMap(Map<String, dynamic> map) {
    return WithdrawalsEntity(
      id: map['id'] ?? '',
      number: map['number']?.toInt() ?? 0,
      status: map['status'] ?? '',
      createdAt: map['createdAt'] ?? '',
      bankAccount: BankAccountPayment.fromMap(map['bankAccount']),
    );
  }

  String toJson() => json.encode(toMap());

  factory WithdrawalsEntity.fromJson(String source) => WithdrawalsEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'WithdrawalsEntity(id: $id, number: $number, status: $status, createdAt: $createdAt, bankAccount: $bankAccount)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is WithdrawalsEntity &&
      other.id == id &&
      other.number == number &&
      other.status == status &&
      other.createdAt == createdAt &&
      other.bankAccount == bankAccount;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      number.hashCode ^
      status.hashCode ^
      createdAt.hashCode ^
      bankAccount.hashCode;
  }
}

class BankAccountPayment {
  final String? holderName;
  final String? holderType;
  final String? holderDocument;
  final String? bank;
  final String? branchNumber;
  final String? branchCheckDigit;
  final String? accountNumber;
  final String? accountCheckDigit;
  final String? type;
  final String? status;
  BankAccountPayment({
    this.holderName,
    this.holderType,
    this.holderDocument,
    this.bank,
    this.branchNumber,
    this.branchCheckDigit,
    this.accountNumber,
    this.accountCheckDigit,
    this.type,
    this.status,
  });

  BankAccountPayment copyWith({
    String? holderName,
    String? holderType,
    String? holderDocument,
    String? bank,
    String? branchNumber,
    String? branchCheckDigit,
    String? accountNumber,
    String? accountCheckDigit,
    String? type,
    String? status,
  }) {
    return BankAccountPayment(
      holderName: holderName ?? this.holderName,
      holderType: holderType ?? this.holderType,
      holderDocument: holderDocument ?? this.holderDocument,
      bank: bank ?? this.bank,
      branchNumber: branchNumber ?? this.branchNumber,
      branchCheckDigit: branchCheckDigit ?? this.branchCheckDigit,
      accountNumber: accountNumber ?? this.accountNumber,
      accountCheckDigit: accountCheckDigit ?? this.accountCheckDigit,
      type: type ?? this.type,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'holderName': holderName,
      'holderType': holderType,
      'holderDocument': holderDocument,
      'bank': bank,
      'branchNumber': branchNumber,
      'branchCheckDigit': branchCheckDigit,
      'accountNumber': accountNumber,
      'accountCheckDigit': accountCheckDigit,
      'type': type,
      'status': status,
    };
  }

  factory BankAccountPayment.fromMap(Map<String, dynamic> map) {
    return BankAccountPayment(
      holderName: map['holderName'],
      holderType: map['holderType'],
      holderDocument: map['holderDocument'],
      bank: map['bank'],
      branchNumber: map['branchNumber'],
      branchCheckDigit: map['branchCheckDigit'],
      accountNumber: map['accountNumber'],
      accountCheckDigit: map['accountCheckDigit'],
      type: map['type'],
      status: map['status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BankAccountPayment.fromJson(String source) => BankAccountPayment.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BankAccountPayment(holderName: $holderName, holderType: $holderType, holderDocument: $holderDocument, bank: $bank, branchNumber: $branchNumber, branchCheckDigit: $branchCheckDigit, accountNumber: $accountNumber, accountCheckDigit: $accountCheckDigit, type: $type, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is BankAccountPayment &&
      other.holderName == holderName &&
      other.holderType == holderType &&
      other.holderDocument == holderDocument &&
      other.bank == bank &&
      other.branchNumber == branchNumber &&
      other.branchCheckDigit == branchCheckDigit &&
      other.accountNumber == accountNumber &&
      other.accountCheckDigit == accountCheckDigit &&
      other.type == type &&
      other.status == status;
  }

  @override
  int get hashCode {
    return holderName.hashCode ^
      holderType.hashCode ^
      holderDocument.hashCode ^
      bank.hashCode ^
      branchNumber.hashCode ^
      branchCheckDigit.hashCode ^
      accountNumber.hashCode ^
      accountCheckDigit.hashCode ^
      type.hashCode ^
      status.hashCode;
  }
}
