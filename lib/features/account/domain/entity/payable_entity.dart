import 'dart:convert';

class PayableEntity {
  
  PayableEntity({
    this.id,
    this.status,
    this.description,
    this.amount,
    this.fee,
    this.anticipationFee,
    this.fraudCoverageFee,
    this.installment,
    this.transactionId,
    this.splitRuleId,
    this.bulkAnticipationId,
    this.anticipationId,
    this.recipientId,
    this.originatorModel,
    this.originatorModelId,
    this.paymentDate,
    this.originalPaymentDate,
    this.type,
    this.paymentMethod,
    this.accrualDate,
    this.dateCreated,
    this.liquidationArrangementId,
  });

  factory PayableEntity.fromMap(Map<String, dynamic> map) {
    return PayableEntity(
      id: map['id']?.toInt() ?? 0,
      status: map['status'] ?? '',
      description: map['description'],
      amount: map['amount']?.toInt() ?? 0,
      fee: map['fee']?.toInt() ?? 0,
      anticipationFee: map['anticipationFee']?.toInt() ?? map['anticipation_fee']?.toInt() ?? 0,
      fraudCoverageFee: map['fraudCoverageFee']?.toInt() ?? map['fraud_coverage_fee']?.toInt() ?? 0,
      installment: map['installment']?.toInt() ?? 0,
      transactionId: map['transactionId']?.toInt() ?? map['transaction_id']?.toInt() ?? 0,
      splitRuleId: map['splitRuleId'] ?? map['split_rule_id'],
      bulkAnticipationId: map['bulkAnticipationId'] ?? map['bulk_anticipation_id'],
      anticipationId: map['anticipationId'] ?? map['anticipation_id'],
      recipientId: map['recipientId'] ?? map['recipient_id'],
      originatorModel: map['originatorModel'] ?? map['originator_model'],
      originatorModelId: map['originatorModelId'] ?? map['originator_model_id'],
      paymentDate: map['paymentDate'] ?? map['payment_date'],
      originalPaymentDate: map['originalPaymentDate'] ?? map['original_payment_date'],
      type: map['type'],
      paymentMethod: map['paymentMethod'] ?? map['payment_method'],
      accrualDate: map['accrualDate'] ?? map['accrual_date'],
      dateCreated: map['dateCreated'] ?? map['date_created'],
      liquidationArrangementId: map['liquidationArrangementId'] ?? map['liquidation_arrangement_id'],
    );
  }

  factory PayableEntity.fromJson(String source) => PayableEntity.fromMap(json.decode(source));
  int? id;
  String? status;
  String? description;
  int? amount;
  int? fee;
  int? anticipationFee;
  int? fraudCoverageFee;
  int? installment;
  int? transactionId;
  String? splitRuleId;
  String? bulkAnticipationId;
  String? anticipationId;
  String? recipientId;
  String? originatorModel;
  String? originatorModelId;
  String? paymentDate;
  String? originalPaymentDate;
  String? type;
  String? paymentMethod;
  String? accrualDate;
  String? dateCreated;
  String? liquidationArrangementId;
  
  

  PayableEntity copyWith({
    int? id,
    String? status,
    String? description,
    int? amount,
    int? fee,
    int? anticipationFee,
    int? fraudCoverageFee,
    int? installment,
    int? transactionId,
    String? splitRuleId,
    String? bulkAnticipationId,
    String? anticipationId,
    String? recipientId,
    String? originatorModel,
    String? originatorModelId,
    String? paymentDate,
    String? originalPaymentDate,
    String? type,
    String? paymentMethod,
    String? accrualDate,
    String? dateCreated,
    String? liquidationArrangementId,
  }) {
    return PayableEntity(
      id: id ?? this.id,
      status: status ?? this.status,
      description: description ?? this.description,
      amount: amount ?? this.amount,
      fee: fee ?? this.fee,
      anticipationFee: anticipationFee ?? this.anticipationFee,
      fraudCoverageFee: fraudCoverageFee ?? this.fraudCoverageFee,
      installment: installment ?? this.installment,
      transactionId: transactionId ?? this.transactionId,
      splitRuleId: splitRuleId ?? this.splitRuleId,
      bulkAnticipationId: bulkAnticipationId ?? this.bulkAnticipationId,
      anticipationId: anticipationId ?? this.anticipationId,
      recipientId: recipientId ?? this.recipientId,
      originatorModel: originatorModel ?? this.originatorModel,
      originatorModelId: originatorModelId ?? this.originatorModelId,
      paymentDate: paymentDate ?? this.paymentDate,
      originalPaymentDate: originalPaymentDate ?? this.originalPaymentDate,
      type: type ?? this.type,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      accrualDate: accrualDate ?? this.accrualDate,
      dateCreated: dateCreated ?? this.dateCreated,
      liquidationArrangementId: liquidationArrangementId ?? this.liquidationArrangementId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'status': status,
      'description': description,
      'amount': amount,
      'fee': fee,
      'anticipationFee': anticipationFee,
      'fraudCoverageFee': fraudCoverageFee,
      'installment': installment,
      'transactionId': transactionId,
      'splitRuleId': splitRuleId,
      'bulkAnticipationId': bulkAnticipationId,
      'anticipationId': anticipationId,
      'recipientId': recipientId,
      'originatorModel': originatorModel,
      'originatorModelId': originatorModelId,
      'paymentDate': paymentDate,
      'originalPaymentDate': originalPaymentDate,
      'type': type,
      'paymentMethod': paymentMethod,
      'accrualDate': accrualDate,
      'dateCreated': dateCreated,
      'liquidationArrangementId': liquidationArrangementId,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'PayableEntity(id: $id, status: $status, description: $description, amount: $amount, fee: $fee, anticipationFee: $anticipationFee, fraudCoverageFee: $fraudCoverageFee, installment: $installment, transactionId: $transactionId, splitRuleId: $splitRuleId, bulkAnticipationId: $bulkAnticipationId, anticipationId: $anticipationId, recipientId: $recipientId, originatorModel: $originatorModel, originatorModelId: $originatorModelId, paymentDate: $paymentDate, originalPaymentDate: $originalPaymentDate, type: $type, paymentMethod: $paymentMethod, accrualDate: $accrualDate, dateCreated: $dateCreated, liquidationArrangementId: $liquidationArrangementId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PayableEntity &&
      other.id == id &&
      other.status == status &&
      other.description == description &&
      other.amount == amount &&
      other.fee == fee &&
      other.anticipationFee == anticipationFee &&
      other.fraudCoverageFee == fraudCoverageFee &&
      other.installment == installment &&
      other.transactionId == transactionId &&
      other.splitRuleId == splitRuleId &&
      other.bulkAnticipationId == bulkAnticipationId &&
      other.anticipationId == anticipationId &&
      other.recipientId == recipientId &&
      other.originatorModel == originatorModel &&
      other.originatorModelId == originatorModelId &&
      other.paymentDate == paymentDate &&
      other.originalPaymentDate == originalPaymentDate &&
      other.type == type &&
      other.paymentMethod == paymentMethod &&
      other.accrualDate == accrualDate &&
      other.dateCreated == dateCreated &&
      other.liquidationArrangementId == liquidationArrangementId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      status.hashCode ^
      description.hashCode ^
      amount.hashCode ^
      fee.hashCode ^
      anticipationFee.hashCode ^
      fraudCoverageFee.hashCode ^
      installment.hashCode ^
      transactionId.hashCode ^
      splitRuleId.hashCode ^
      bulkAnticipationId.hashCode ^
      anticipationId.hashCode ^
      recipientId.hashCode ^
      originatorModel.hashCode ^
      originatorModelId.hashCode ^
      paymentDate.hashCode ^
      originalPaymentDate.hashCode ^
      type.hashCode ^
      paymentMethod.hashCode ^
      accrualDate.hashCode ^
      dateCreated.hashCode ^
      liquidationArrangementId.hashCode;
  }
}
