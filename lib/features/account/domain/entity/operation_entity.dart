import 'dart:convert';

class OperationEntity {
  String id;
  String status;
  String type;
  String? createdAt;
  int? balanceAmount;
  int? amount;
  int? fee;
  MovementObject? movementObject;
  OperationEntity({
    required this.id,
    required this.status,
    required this.type,
    this.createdAt,
    this.balanceAmount,
    this.amount,
    this.fee,
    this.movementObject,
  });

  OperationEntity copyWith({
    String? id,
    String? status,
    String? type,
    String? createdAt,
    int? balanceAmount,
    int? amount,
    int? fee,
    MovementObject? movementObject,
  }) {
    return OperationEntity(
      id: id ?? this.id,
      status: status ?? this.status,
      type: type ?? this.type,
      createdAt: createdAt ?? this.createdAt,
      balanceAmount: balanceAmount ?? this.balanceAmount,
      amount: amount ?? this.amount,
      fee: fee ?? this.fee,
      movementObject: movementObject ?? this.movementObject,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'status': status,
      'type': type,
      'createdAt': createdAt,
      'balanceAmount': balanceAmount,
      'amount': amount,
      'fee': fee,
      'movementObject': movementObject?.toMap(),
    };
  }

  factory OperationEntity.fromMap(Map<String, dynamic> map) {
    return OperationEntity(
      id: map['id'] ?? '',
      status: map['status'] ?? '',
      type: map['type'] ?? '',
      createdAt: map['createdAt'],
      balanceAmount: map['balanceAmount']?.toInt(),
      amount: map['amount']?.toInt(),
      fee: map['fee']?.toInt(),
      movementObject: map['movementObject'] != null ? MovementObject.fromMap(map['movementObject']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory OperationEntity.fromJson(String source) => OperationEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OperationEntity(id: $id, status: $status, type: $type, createdAt: $createdAt, balanceAmount: $balanceAmount, amount: $amount, fee: $fee, movementObject: $movementObject)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is OperationEntity &&
      other.id == id &&
      other.status == status &&
      other.type == type &&
      other.createdAt == createdAt &&
      other.balanceAmount == balanceAmount &&
      other.amount == amount &&
      other.fee == fee &&
      other.movementObject == movementObject;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      status.hashCode ^
      type.hashCode ^
      createdAt.hashCode ^
      balanceAmount.hashCode ^
      amount.hashCode ^
      fee.hashCode ^
      movementObject.hashCode;
  }
}

class MovementObject {
  int? fee;
  int? anticipationFee;
  int? fraudCoverageFee;
  int? amount;
  String? originatorModel;
  String? paymentDate;
  String? paymentMethod;
  String? object;
  String? status;
  String? createdAt;
  String? type;
  MovementObject({
    this.fee,
    this.anticipationFee,
    this.fraudCoverageFee,
    this.amount,
    this.originatorModel,
    this.paymentDate,
    this.paymentMethod,
    this.object,
    this.status,
    this.createdAt,
    this.type,
  });

  MovementObject copyWith({
    int? fee,
    int? anticipationFee,
    int? fraudCoverageFee,
    int? amount,
    String? originatorModel,
    String? paymentDate,
    String? paymentMethod,
    String? object,
    String? status,
    String? createdAt,
    String? type,
  }) {
    return MovementObject(
      fee: fee ?? this.fee,
      anticipationFee: anticipationFee ?? this.anticipationFee,
      fraudCoverageFee: fraudCoverageFee ?? this.fraudCoverageFee,
      amount: amount ?? this.amount,
      originatorModel: originatorModel ?? this.originatorModel,
      paymentDate: paymentDate ?? this.paymentDate,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      object: object ?? this.object,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'fee': fee,
      'anticipationFee': anticipationFee,
      'fraudCoverageFee': fraudCoverageFee,
      'amount': amount,
      'originatorModel': originatorModel,
      'paymentDate': paymentDate,
      'paymentMethod': paymentMethod,
      'object': object,
      'status': status,
      'createdAt': createdAt,
      'type': type,
    };
  }

  factory MovementObject.fromMap(Map<String, dynamic> map) {
    return MovementObject(
      fee: map['fee']?.toInt(),
      anticipationFee: map['anticipationFee']?.toInt(),
      fraudCoverageFee: map['fraudCoverageFee']?.toInt(),
      amount: map['amount']?.toInt(),
      originatorModel: map['originatorModel'],
      paymentDate: map['paymentDate'],
      paymentMethod: map['paymentMethod'],
      object: map['object'],
      status: map['status'],
      createdAt: map['createdAt'],
      type: map['type'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MovementObject.fromJson(String source) => MovementObject.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MovementObject(fee: $fee, anticipationFee: $anticipationFee, fraudCoverageFee: $fraudCoverageFee, amount: $amount, originatorModel: $originatorModel, paymentDate: $paymentDate, paymentMethod: $paymentMethod, object: $object, status: $status, createdAt: $createdAt, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MovementObject &&
      other.fee == fee &&
      other.anticipationFee == anticipationFee &&
      other.fraudCoverageFee == fraudCoverageFee &&
      other.amount == amount &&
      other.originatorModel == originatorModel &&
      other.paymentDate == paymentDate &&
      other.paymentMethod == paymentMethod &&
      other.object == object &&
      other.status == status &&
      other.createdAt == createdAt &&
      other.type == type;
  }

  @override
  int get hashCode {
    return fee.hashCode ^
      anticipationFee.hashCode ^
      fraudCoverageFee.hashCode ^
      amount.hashCode ^
      originatorModel.hashCode ^
      paymentDate.hashCode ^
      paymentMethod.hashCode ^
      object.hashCode ^
      status.hashCode ^
      createdAt.hashCode ^
      type.hashCode;
  }
}
