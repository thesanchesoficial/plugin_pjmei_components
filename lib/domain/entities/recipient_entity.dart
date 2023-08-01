import 'dart:convert';

class RecipientEntity {

  RecipientEntity({
    this.id,
    this.status,
    this.statusReason,
    this.externalId,
    this.bankAccount,
    this.transferEnabled,
    this.lastTransfer,
    this.transferInterval,
    this.transferDay,
    this.automaticAnticipationEnabled,
    this.automaticAnticipationType,
    this.automaticAnticipationDays,
    this.automaticAnticipation1025Delay,
    this.anticipatableVolumePercentage,
    this.dateCreated,
    this.dateUpdated,
    this.registerInformation,
    this.metadata,
    this.mdrConfigurationId,
    this.feePresetId,
    this.automaticAnticipationFeeReimbursement,
    this.statementDescriptor,
    this.pixRecipientAsSource,
    this.clientSince,
  });

  factory RecipientEntity.fromMap(Map<String, dynamic> map) {
    return RecipientEntity(
      id: map['id'],
      status: map['status'],
      statusReason: map['statusReason'],
      externalId: map['externalId'],
      bankAccount: map['bankAccount'] != null ? BankAccount.fromMap(map['bankAccount']) : null,
      transferEnabled: map['transferEnabled'],
      lastTransfer: map['lastTransfer'],
      transferInterval: map['transferInterval'],
      transferDay: map['transferDay']?.toInt(),
      automaticAnticipationEnabled: map['automaticAnticipationEnabled'],
      automaticAnticipationType: map['automaticAnticipationType'],
      automaticAnticipationDays: map['automaticAnticipationDays'],
      automaticAnticipation1025Delay: map['automaticAnticipation1025Delay']?.toInt(),
      anticipatableVolumePercentage: map['anticipatableVolumePercentage']?.toInt(),
      dateCreated: map['dateCreated'],
      dateUpdated: map['dateUpdated'],
      registerInformation: map['registerInformation'],
      metadata: map['metadata'],
      mdrConfigurationId: map['mdrConfigurationId'],
      feePresetId: map['feePresetId'],
      automaticAnticipationFeeReimbursement: map['automaticAnticipationFeeReimbursement'],
      statementDescriptor: map['statementDescriptor'],
      pixRecipientAsSource: map['pixRecipientAsSource'],
      clientSince: map['clientSince'],
    );
  }

  factory RecipientEntity.fromJson(String source) => RecipientEntity.fromMap(json.decode(source));
  final String? id;
  final String? status;
  final String? statusReason;
  final String? externalId;
  final BankAccount? bankAccount;
  final bool? transferEnabled;
  final String? lastTransfer;
  final String? transferInterval;
  final int? transferDay;
  final bool? automaticAnticipationEnabled;
  final String? automaticAnticipationType;
  final String? automaticAnticipationDays;
  final int? automaticAnticipation1025Delay;
  final int? anticipatableVolumePercentage;
  final String? dateCreated;
  final String? dateUpdated;
  final String? registerInformation;
  final String? metadata;
  final String? mdrConfigurationId;
  final String? feePresetId;
  final String? automaticAnticipationFeeReimbursement;
  final String? statementDescriptor;
  final String? pixRecipientAsSource;
  final String? clientSince;

  RecipientEntity copyWith({
    String? id,
    String? status,
    String? statusReason,
    String? externalId,
    BankAccount? bankAccount,
    bool? transferEnabled,
    String? lastTransfer,
    String? transferInterval,
    int? transferDay,
    bool? automaticAnticipationEnabled,
    String? automaticAnticipationType,
    String? automaticAnticipationDays,
    int? automaticAnticipation1025Delay,
    int? anticipatableVolumePercentage,
    String? dateCreated,
    String? dateUpdated,
    String? registerInformation,
    String? metadata,
    String? mdrConfigurationId,
    String? feePresetId,
    String? automaticAnticipationFeeReimbursement,
    String? statementDescriptor,
    String? pixRecipientAsSource,
    String? clientSince,
  }) {
    return RecipientEntity(
      id: id ?? this.id,
      status: status ?? this.status,
      statusReason: statusReason ?? this.statusReason,
      externalId: externalId ?? this.externalId,
      bankAccount: bankAccount ?? this.bankAccount,
      transferEnabled: transferEnabled ?? this.transferEnabled,
      lastTransfer: lastTransfer ?? this.lastTransfer,
      transferInterval: transferInterval ?? this.transferInterval,
      transferDay: transferDay ?? this.transferDay,
      automaticAnticipationEnabled: automaticAnticipationEnabled ?? this.automaticAnticipationEnabled,
      automaticAnticipationType: automaticAnticipationType ?? this.automaticAnticipationType,
      automaticAnticipationDays: automaticAnticipationDays ?? this.automaticAnticipationDays,
      automaticAnticipation1025Delay: automaticAnticipation1025Delay ?? this.automaticAnticipation1025Delay,
      anticipatableVolumePercentage: anticipatableVolumePercentage ?? this.anticipatableVolumePercentage,
      dateCreated: dateCreated ?? this.dateCreated,
      dateUpdated: dateUpdated ?? this.dateUpdated,
      registerInformation: registerInformation ?? this.registerInformation,
      metadata: metadata ?? this.metadata,
      mdrConfigurationId: mdrConfigurationId ?? this.mdrConfigurationId,
      feePresetId: feePresetId ?? this.feePresetId,
      automaticAnticipationFeeReimbursement: automaticAnticipationFeeReimbursement ?? this.automaticAnticipationFeeReimbursement,
      statementDescriptor: statementDescriptor ?? this.statementDescriptor,
      pixRecipientAsSource: pixRecipientAsSource ?? this.pixRecipientAsSource,
      clientSince: clientSince ?? this.clientSince,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'status': status,
      'statusReason': statusReason,
      'externalId': externalId,
      'bankAccount': bankAccount?.toMap(),
      'transferEnabled': transferEnabled,
      'lastTransfer': lastTransfer,
      'transferInterval': transferInterval,
      'transferDay': transferDay,
      'automaticAnticipationEnabled': automaticAnticipationEnabled,
      'automaticAnticipationType': automaticAnticipationType,
      'automaticAnticipationDays': automaticAnticipationDays,
      'automaticAnticipation1025Delay': automaticAnticipation1025Delay,
      'anticipatableVolumePercentage': anticipatableVolumePercentage,
      'dateCreated': dateCreated,
      'dateUpdated': dateUpdated,
      'registerInformation': registerInformation,
      'metadata': metadata,
      'mdrConfigurationId': mdrConfigurationId,
      'feePresetId': feePresetId,
      'automaticAnticipationFeeReimbursement': automaticAnticipationFeeReimbursement,
      'statementDescriptor': statementDescriptor,
      'pixRecipientAsSource': pixRecipientAsSource,
      'clientSince': clientSince,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'RecipientEntity(id: $id, status: $status, statusReason: $statusReason, externalId: $externalId, bankAccount: $bankAccount, transferEnabled: $transferEnabled, lastTransfer: $lastTransfer, transferInterval: $transferInterval, transferDay: $transferDay, automaticAnticipationEnabled: $automaticAnticipationEnabled, automaticAnticipationType: $automaticAnticipationType, automaticAnticipationDays: $automaticAnticipationDays, automaticAnticipation1025Delay: $automaticAnticipation1025Delay, anticipatableVolumePercentage: $anticipatableVolumePercentage, dateCreated: $dateCreated, dateUpdated: $dateUpdated, registerInformation: $registerInformation, metadata: $metadata, mdrConfigurationId: $mdrConfigurationId, feePresetId: $feePresetId, automaticAnticipationFeeReimbursement: $automaticAnticipationFeeReimbursement, statementDescriptor: $statementDescriptor, pixRecipientAsSource: $pixRecipientAsSource, clientSince: $clientSince)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is RecipientEntity &&
      other.id == id &&
      other.status == status &&
      other.statusReason == statusReason &&
      other.externalId == externalId &&
      other.bankAccount == bankAccount &&
      other.transferEnabled == transferEnabled &&
      other.lastTransfer == lastTransfer &&
      other.transferInterval == transferInterval &&
      other.transferDay == transferDay &&
      other.automaticAnticipationEnabled == automaticAnticipationEnabled &&
      other.automaticAnticipationType == automaticAnticipationType &&
      other.automaticAnticipationDays == automaticAnticipationDays &&
      other.automaticAnticipation1025Delay == automaticAnticipation1025Delay &&
      other.anticipatableVolumePercentage == anticipatableVolumePercentage &&
      other.dateCreated == dateCreated &&
      other.dateUpdated == dateUpdated &&
      other.registerInformation == registerInformation &&
      other.metadata == metadata &&
      other.mdrConfigurationId == mdrConfigurationId &&
      other.feePresetId == feePresetId &&
      other.automaticAnticipationFeeReimbursement == automaticAnticipationFeeReimbursement &&
      other.statementDescriptor == statementDescriptor &&
      other.pixRecipientAsSource == pixRecipientAsSource &&
      other.clientSince == clientSince;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      status.hashCode ^
      statusReason.hashCode ^
      externalId.hashCode ^
      bankAccount.hashCode ^
      transferEnabled.hashCode ^
      lastTransfer.hashCode ^
      transferInterval.hashCode ^
      transferDay.hashCode ^
      automaticAnticipationEnabled.hashCode ^
      automaticAnticipationType.hashCode ^
      automaticAnticipationDays.hashCode ^
      automaticAnticipation1025Delay.hashCode ^
      anticipatableVolumePercentage.hashCode ^
      dateCreated.hashCode ^
      dateUpdated.hashCode ^
      registerInformation.hashCode ^
      metadata.hashCode ^
      mdrConfigurationId.hashCode ^
      feePresetId.hashCode ^
      automaticAnticipationFeeReimbursement.hashCode ^
      statementDescriptor.hashCode ^
      pixRecipientAsSource.hashCode ^
      clientSince.hashCode;
  }
}


class BankAccount {

  BankAccount({
    this.id,
    this.bankCode,
    this.agencia,
    this.agenciaDv,
    this.conta,
    this.contaDv,
    this.type,
    this.documentType,
    this.documentNumber,
    this.chargeTransferFees,
    this.pixKey,
    this.dateCreated,
  });

  factory BankAccount.fromMap(Map<String, dynamic> map) {
    return BankAccount(
      id: map['id']?.toInt(),
      bankCode: map['bankCode'],
      agencia: map['agencia'],
      agenciaDv: map['agenciaDv'],
      conta: map['conta'],
      contaDv: map['contaDv'],
      type: map['type'],
      documentType: map['documentType'],
      documentNumber: map['documentNumber'],
      chargeTransferFees: map['chargeTransferFees'],
      pixKey: map['pixKey'],
      dateCreated: map['dateCreated'],
    );
  }

  factory BankAccount.fromJson(String source) => BankAccount.fromMap(json.decode(source));
  final int? id;
  final String? bankCode;
  final String? agencia;
  final String? agenciaDv;
  final String? conta;
  final String? contaDv;
  final String? type;
  final String? documentType;
  final String? documentNumber;
  final bool? chargeTransferFees;
  final String? pixKey;
  final String? dateCreated;


  BankAccount copyWith({
    int? id,
    String? bankCode,
    String? agencia,
    String? agenciaDv,
    String? conta,
    String? contaDv,
    String? type,
    String? documentType,
    String? documentNumber,
    bool? chargeTransferFees,
    String? pixKey,
    String? dateCreated,
  }) {
    return BankAccount(
      id: id ?? this.id,
      bankCode: bankCode ?? this.bankCode,
      agencia: agencia ?? this.agencia,
      agenciaDv: agenciaDv ?? this.agenciaDv,
      conta: conta ?? this.conta,
      contaDv: contaDv ?? this.contaDv,
      type: type ?? this.type,
      documentType: documentType ?? this.documentType,
      documentNumber: documentNumber ?? this.documentNumber,
      chargeTransferFees: chargeTransferFees ?? this.chargeTransferFees,
      pixKey: pixKey ?? this.pixKey,
      dateCreated: dateCreated ?? this.dateCreated,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'bankCode': bankCode,
      'agencia': agencia,
      'agenciaDv': agenciaDv,
      'conta': conta,
      'contaDv': contaDv,
      'type': type,
      'documentType': documentType,
      'documentNumber': documentNumber,
      'chargeTransferFees': chargeTransferFees,
      'pixKey': pixKey,
      'dateCreated': dateCreated,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'BankAccount(id: $id, bankCode: $bankCode, agencia: $agencia, agenciaDv: $agenciaDv, conta: $conta, contaDv: $contaDv, type: $type, documentType: $documentType, documentNumber: $documentNumber, chargeTransferFees: $chargeTransferFees, pixKey: $pixKey, dateCreated: $dateCreated)';
  }

  String toResume() {
    return '$bankCode || $agencia $agenciaDv || $conta $contaDv || $type || $documentType';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is BankAccount &&
      other.id == id &&
      other.bankCode == bankCode &&
      other.agencia == agencia &&
      other.agenciaDv == agenciaDv &&
      other.conta == conta &&
      other.contaDv == contaDv &&
      other.type == type &&
      other.documentType == documentType &&
      other.documentNumber == documentNumber &&
      other.chargeTransferFees == chargeTransferFees &&
      other.pixKey == pixKey &&
      other.dateCreated == dateCreated;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      bankCode.hashCode ^
      agencia.hashCode ^
      agenciaDv.hashCode ^
      conta.hashCode ^
      contaDv.hashCode ^
      type.hashCode ^
      documentType.hashCode ^
      documentNumber.hashCode ^
      chargeTransferFees.hashCode ^
      pixKey.hashCode ^
      dateCreated.hashCode;
  }
}
