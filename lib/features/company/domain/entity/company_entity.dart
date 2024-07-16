import 'dart:convert';

import '../../../account/domain/entity/default_bank_account_entity.dart';
import '../../../account/domain/entity/kyc_details_entity.dart';
import '../../../account/domain/entity/transfer_settings_entity.dart';
import '../../../ecommerce/domain/entity/ecommerce_entity.dart';
import '../../../plans/domain/entity/plan_list_entity.dart';

class CompanyEntity {
  String? id;
  String? owner;
  String? createdAt;
  String? updatedAt;
  String fantasyName;
  String corporateName;
  String documentNumber;
  String documentType;
  String phone;
  String email;
  PlanEntity? plan;
  String? whiteLabel;
  String? logo;
  String? color;
  String? description;
  String? type;
  String? recipientId;
  String? customerId;
  Recipient? recipient;
  EcommerceEntity? ecommerce;
  CompanyEntity({
    this.id,
    this.owner,
    this.createdAt,
    this.updatedAt,
    required this.fantasyName,
    required this.corporateName,
    required this.documentNumber,
    required this.documentType,
    required this.phone,
    required this.email,
    this.plan,
    this.whiteLabel,
    this.logo,
    this.color,
    this.description,
    this.type,
    this.recipientId,
    this.customerId,
    this.recipient,
    this.ecommerce,
  });

  CompanyEntity copyWith({
    String? id,
    String? owner,
    String? createdAt,
    String? updatedAt,
    String? fantasyName,
    String? corporateName,
    String? documentNumber,
    String? documentType,
    String? phone,
    String? email,
    PlanEntity? plan,
    String? whiteLabel,
    String? logo,
    String? color,
    String? description,
    String? type,
    String? recipientId,
    String? customerId,
    Recipient? recipient,
    EcommerceEntity? ecommerce,
  }) {
    return CompanyEntity(
      id: id ?? this.id,
      owner: owner ?? this.owner,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      fantasyName: fantasyName ?? this.fantasyName,
      corporateName: corporateName ?? this.corporateName,
      documentNumber: documentNumber ?? this.documentNumber,
      documentType: documentType ?? this.documentType,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      plan: plan ?? this.plan,
      whiteLabel: whiteLabel ?? this.whiteLabel,
      logo: logo ?? this.logo,
      color: color ?? this.color,
      description: description ?? this.description,
      type: type ?? this.type,
      recipientId: recipientId ?? this.recipientId,
      customerId: customerId ?? this.customerId,
      recipient: recipient ?? this.recipient,
      ecommerce: ecommerce ?? this.ecommerce,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'owner': owner,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'fantasyName': fantasyName,
      'corporateName': corporateName,
      'documentNumber': documentNumber,
      'documentType': documentType,
      'phone': phone,
      'email': email,
      'plan': plan?.toMap(),
      'whiteLabel': whiteLabel,
      'logo': logo,
      'color': color,
      'description': description,
      'type': type,
      'recipientId': recipientId,
      'customerId': customerId,
      'recipient': recipient?.toMap(),
      'ecommerce': ecommerce?.toMap(),
    };
  }

  factory CompanyEntity.fromMap(Map<String, dynamic> map) {
    return CompanyEntity(
      id: map['id'],
      owner: map['owner'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      fantasyName: map['fantasyName'] ?? '',
      corporateName: map['corporateName'] ?? '',
      documentNumber: map['documentNumber'] ?? '',
      documentType: map['documentType'] ?? '',
      phone: map['phone'] ?? '',
      email: map['email'] ?? '',
      plan: map['plan'] != null ? PlanEntity.fromMap(map['plan']) : null,
      whiteLabel: map['whiteLabel'],
      logo: map['logo'],
      color: map['color'],
      description: map['description'],
      type: map['type'],
      recipientId: map['recipientId'],
      customerId: map['customerId'],
      recipient: map['recipient'] != null ? Recipient.fromMap(map['recipient']) : null,
      ecommerce: map['ecommerce'] != null ? EcommerceEntity.fromMap(map['ecommerce']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CompanyEntity.fromJson(String source) => CompanyEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CompanyEntity(id: $id, owner: $owner, createdAt: $createdAt, updatedAt: $updatedAt, fantasyName: $fantasyName, corporateName: $corporateName, documentNumber: $documentNumber, documentType: $documentType, phone: $phone, email: $email, plan: $plan, whiteLabel: $whiteLabel, logo: $logo, color: $color, description: $description, type: $type, recipientId: $recipientId, customerId: $customerId, recipient: $recipient, ecommerce: $ecommerce)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CompanyEntity &&
      other.id == id &&
      other.owner == owner &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.fantasyName == fantasyName &&
      other.corporateName == corporateName &&
      other.documentNumber == documentNumber &&
      other.documentType == documentType &&
      other.phone == phone &&
      other.email == email &&
      other.plan == plan &&
      other.whiteLabel == whiteLabel &&
      other.logo == logo &&
      other.color == color &&
      other.description == description &&
      other.type == type &&
      other.recipientId == recipientId &&
      other.customerId == customerId &&
      other.recipient == recipient &&
      other.ecommerce == ecommerce;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      owner.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      fantasyName.hashCode ^
      corporateName.hashCode ^
      documentNumber.hashCode ^
      documentType.hashCode ^
      phone.hashCode ^
      email.hashCode ^
      plan.hashCode ^
      whiteLabel.hashCode ^
      logo.hashCode ^
      color.hashCode ^
      description.hashCode ^
      type.hashCode ^
      recipientId.hashCode ^
      customerId.hashCode ^
      recipient.hashCode ^
      ecommerce.hashCode;
  }
}

class Recipient {
  final String status;
  final DefaultBankAccount? bankAccount;
  final KycDetails? kycDetails;
  final TransferSettings? transferSettings;
  Recipient({
    required this.status,
    this.bankAccount,
    this.kycDetails,
    this.transferSettings,
  });

  Recipient copyWith({
    String? status,
    DefaultBankAccount? bankAccount,
    KycDetails? kycDetails,
    TransferSettings? transferSettings,
  }) {
    return Recipient(
      status: status ?? this.status,
      bankAccount: bankAccount ?? this.bankAccount,
      kycDetails: kycDetails ?? this.kycDetails,
      transferSettings: transferSettings ?? this.transferSettings,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'bankAccount': bankAccount?.toMap(),
      'kycDetails': kycDetails?.toMap(),
      'transferSettings': transferSettings?.toMap(),
    };
  }

  factory Recipient.fromMap(Map<String, dynamic> map) {
    return Recipient(
      status: map['status'] ?? '',
      bankAccount: map['bankAccount'] != null ? DefaultBankAccount.fromMap(map['bankAccount']) : null,
      kycDetails: map['kycDetails'] != null ? KycDetails.fromMap(map['kycDetails']) : null,
      transferSettings: map['transferSettings'] != null ? TransferSettings.fromMap(map['transferSettings']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Recipient.fromJson(String source) => Recipient.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Recipient(status: $status, bankAccount: $bankAccount, kycDetails: $kycDetails, transferSettings: $transferSettings)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Recipient &&
      other.status == status &&
      other.bankAccount == bankAccount &&
      other.kycDetails == kycDetails &&
      other.transferSettings == transferSettings;
  }

  @override
  int get hashCode {
    return status.hashCode ^
      bankAccount.hashCode ^
      kycDetails.hashCode ^
      transferSettings.hashCode;
  }
}
