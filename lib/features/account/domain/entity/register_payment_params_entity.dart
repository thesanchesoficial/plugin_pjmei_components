import 'dart:convert';

class RegisterPaymentChurch {
  RegisterPaymentChurch({
    this.email,
    this.document,
    this.type,
    this.name,
    this.birthdate,
    this.monthlyIncome,
    this.professionalOccupation,
    this.companyName,
    this.tradingName,
    this.annualRevenue,
    this.bankAccountHolderName,
    this.bankAccountHolderType,
    this.bankAccountHolderDocument,
    this.bankAccountBank,
    this.bankAccountBranchNumber,
    this.bankAccountAccountNumber,
    this.bankAccountAccountCheckDigit,
    this.bankAccountType,
    this.church,
    this.selfDeclaredLegalRepresentative,
  });

  factory RegisterPaymentChurch.fromMap(Map<String, dynamic> map) {
    return RegisterPaymentChurch(
      email: map['email'],
      document: map['document'],
      type: map['type'],
      name: map['name'],
      birthdate: map['birthdate'],
      monthlyIncome: map['monthlyIncome']?.toInt(),
      professionalOccupation: map['professionalOccupation'],
      companyName: map['companyName'],
      tradingName: map['tradingName'],
      annualRevenue: map['annualRevenue']?.toInt(),
      bankAccountHolderName: map['bankAccountHolderName'],
      bankAccountHolderType: map['bankAccountHolderType'],
      bankAccountHolderDocument: map['bankAccountHolderDocument'],
      bankAccountBank: map['bankAccountBank'],
      bankAccountBranchNumber: map['bankAccountBranchNumber'],
      bankAccountAccountNumber: map['bankAccountAccountNumber'],
      bankAccountAccountCheckDigit: map['bankAccountAccountCheckDigit'],
      bankAccountType: map['bankAccountType'],
      church: map['church'],
      selfDeclaredLegalRepresentative: map['selfDeclaredLegalRepresentative'],
    );
  }

  factory RegisterPaymentChurch.fromJson(String source) => RegisterPaymentChurch.fromMap(json.decode(source));
  final String? email;
  final String? document;
  final String? type;
  final String? name;
  final String? birthdate;
  final int? monthlyIncome;
  final String? professionalOccupation;
  final String? companyName;
  final String? tradingName;
  final int? annualRevenue;
  final String? bankAccountHolderName;
  final String? bankAccountHolderType;
  final String? bankAccountHolderDocument;
  final String? bankAccountBank;
  final String? bankAccountBranchNumber;
  final String? bankAccountAccountNumber;
  final String? bankAccountAccountCheckDigit;
  final String? bankAccountType;
  final String? church;
  final bool? selfDeclaredLegalRepresentative;

  RegisterPaymentChurch copyWith({
    String? email,
    String? document,
    String? type,
    String? name,
    String? birthdate,
    int? monthlyIncome,
    String? professionalOccupation,
    String? companyName,
    String? tradingName,
    int? annualRevenue,
    String? bankAccountHolderName,
    String? bankAccountHolderType,
    String? bankAccountHolderDocument,
    String? bankAccountBank,
    String? bankAccountBranchNumber,
    String? bankAccountAccountNumber,
    String? bankAccountAccountCheckDigit,
    String? bankAccountType,
    String? church,
    bool? selfDeclaredLegalRepresentative,
  }) {
    return RegisterPaymentChurch(
      email: email ?? this.email,
      document: document ?? this.document,
      type: type ?? this.type,
      name: name ?? this.name,
      birthdate: birthdate ?? this.birthdate,
      monthlyIncome: monthlyIncome ?? this.monthlyIncome,
      professionalOccupation: professionalOccupation ?? this.professionalOccupation,
      companyName: companyName ?? this.companyName,
      tradingName: tradingName ?? this.tradingName,
      annualRevenue: annualRevenue ?? this.annualRevenue,
      bankAccountHolderName: bankAccountHolderName ?? this.bankAccountHolderName,
      bankAccountHolderType: bankAccountHolderType ?? this.bankAccountHolderType,
      bankAccountHolderDocument: bankAccountHolderDocument ?? this.bankAccountHolderDocument,
      bankAccountBank: bankAccountBank ?? this.bankAccountBank,
      bankAccountBranchNumber: bankAccountBranchNumber ?? this.bankAccountBranchNumber,
      bankAccountAccountNumber: bankAccountAccountNumber ?? this.bankAccountAccountNumber,
      bankAccountAccountCheckDigit: bankAccountAccountCheckDigit ?? this.bankAccountAccountCheckDigit,
      bankAccountType: bankAccountType ?? this.bankAccountType,
      church: church ?? this.church,
      selfDeclaredLegalRepresentative: selfDeclaredLegalRepresentative ?? this.selfDeclaredLegalRepresentative,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'document': document,
      'type': type,
      'name': name,
      'birthdate': birthdate,
      'monthlyIncome': monthlyIncome,
      'professionalOccupation': professionalOccupation,
      'companyName': companyName,
      'tradingName': tradingName,
      'annualRevenue': annualRevenue,
      'bankAccountHolderName': bankAccountHolderName,
      'bankAccountHolderType': bankAccountHolderType,
      'bankAccountHolderDocument': bankAccountHolderDocument,
      'bankAccountBank': bankAccountBank,
      'bankAccountBranchNumber': bankAccountBranchNumber,
      'bankAccountAccountNumber': bankAccountAccountNumber,
      'bankAccountAccountCheckDigit': bankAccountAccountCheckDigit,
      'bankAccountType': bankAccountType,
      'church': church,
      'selfDeclaredLegalRepresentative': selfDeclaredLegalRepresentative,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'RegisterPaymentChurch(email: $email, document: $document, type: $type, name: $name, birthdate: $birthdate, monthlyIncome: $monthlyIncome, professionalOccupation: $professionalOccupation, companyName: $companyName, tradingName: $tradingName, annualRevenue: $annualRevenue, bankAccountHolderName: $bankAccountHolderName, bankAccountHolderType: $bankAccountHolderType, bankAccountHolderDocument: $bankAccountHolderDocument, bankAccountBank: $bankAccountBank, bankAccountBranchNumber: $bankAccountBranchNumber, bankAccountAccountNumber: $bankAccountAccountNumber, bankAccountAccountCheckDigit: $bankAccountAccountCheckDigit, bankAccountType: $bankAccountType)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is RegisterPaymentChurch &&
      other.email == email &&
      other.document == document &&
      other.type == type &&
      other.name == name &&
      other.birthdate == birthdate &&
      other.monthlyIncome == monthlyIncome &&
      other.professionalOccupation == professionalOccupation &&
      other.companyName == companyName &&
      other.tradingName == tradingName &&
      other.annualRevenue == annualRevenue &&
      other.bankAccountHolderName == bankAccountHolderName &&
      other.bankAccountHolderType == bankAccountHolderType &&
      other.bankAccountHolderDocument == bankAccountHolderDocument &&
      other.bankAccountBank == bankAccountBank &&
      other.bankAccountBranchNumber == bankAccountBranchNumber &&
      other.bankAccountAccountNumber == bankAccountAccountNumber &&
      other.bankAccountAccountCheckDigit == bankAccountAccountCheckDigit &&
      other.church == church &&
      other.selfDeclaredLegalRepresentative == selfDeclaredLegalRepresentative &&
      other.bankAccountType == bankAccountType;
  }

  @override
  int get hashCode {
    return email.hashCode ^
      document.hashCode ^
      type.hashCode ^
      name.hashCode ^
      birthdate.hashCode ^
      monthlyIncome.hashCode ^
      professionalOccupation.hashCode ^
      companyName.hashCode ^
      tradingName.hashCode ^
      annualRevenue.hashCode ^
      bankAccountHolderName.hashCode ^
      bankAccountHolderType.hashCode ^
      bankAccountHolderDocument.hashCode ^
      bankAccountBank.hashCode ^
      bankAccountBranchNumber.hashCode ^
      bankAccountAccountNumber.hashCode ^
      bankAccountAccountCheckDigit.hashCode ^
      church.hashCode ^
      selfDeclaredLegalRepresentative.hashCode ^
      bankAccountType.hashCode;
  }
}
