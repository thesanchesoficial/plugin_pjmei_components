import 'dart:convert';

class VoucherDiscountEntity {
  final String type;
  final num value;
  VoucherDiscountEntity({
    required this.type,
    required this.value,
  });

  VoucherDiscountEntity copyWith({
    String? type,
    num? value,
  }) {
    return VoucherDiscountEntity(
      type: type ?? this.type,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'value': value,
    };
  }

  factory VoucherDiscountEntity.fromMap(Map<String, dynamic> map) {
    return VoucherDiscountEntity(
      type: map['type'] ?? '',
      value: map['value'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory VoucherDiscountEntity.fromJson(String source) => VoucherDiscountEntity.fromMap(json.decode(source));

  @override
  String toString() => 'VoucherDiscountEntity(type: $type, value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is VoucherDiscountEntity &&
      other.type == type &&
      other.value == value;
  }

  @override
  int get hashCode => type.hashCode ^ value.hashCode;
}

class VoucherEntity {
  String? id;
  String name;
  String code;
  String? startDate;
  String? endDate;
  String? planId;
  int limit;
  int limitPerUser;
  VoucherDiscountEntity discount;
  VoucherEntity({
    this.id,
    required this.name,
    required this.code,
    this.startDate,
    this.endDate,
    this.planId,
    required this.limit,
    required this.limitPerUser,
    required this.discount,
  });

  VoucherEntity copyWith({
    String? id,
    String? name,
    String? code,
    String? startDate,
    String? endDate,
    String? planId,
    int? limit,
    int? limitPerUser,
    VoucherDiscountEntity? discount,
  }) {
    return VoucherEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      planId: planId ?? this.planId,
      limit: limit ?? this.limit,
      limitPerUser: limitPerUser ?? this.limitPerUser,
      discount: discount ?? this.discount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'code': code,
      'startDate': startDate,
      'endDate': endDate,
      'planId': planId,
      'limit': limit,
      'limitPerUser': limitPerUser,
      'discount': discount.toMap(),
    };
  }

  factory VoucherEntity.fromMap(Map<String, dynamic> map) {
    return VoucherEntity(
      id: map['id'],
      name: map['name'] ?? '',
      code: map['code'] ?? '',
      startDate: map['startDate'],
      endDate: map['endDate'],
      planId: map['planId'],
      limit: map['limit']?.toInt() ?? 0,
      limitPerUser: map['limitPerUser']?.toInt() ?? 0,
      discount: VoucherDiscountEntity.fromMap(map['discount']),
    );
  }

  String toJson() => json.encode(toMap());

  factory VoucherEntity.fromJson(String source) => VoucherEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'VoucherEntity(id: $id, name: $name, code: $code, startDate: $startDate, endDate: $endDate, planId: $planId, limit: $limit, limitPerUser: $limitPerUser, discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is VoucherEntity &&
      other.id == id &&
      other.name == name &&
      other.code == code &&
      other.startDate == startDate &&
      other.endDate == endDate &&
      other.planId == planId &&
      other.limit == limit &&
      other.limitPerUser == limitPerUser &&
      other.discount == discount;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      code.hashCode ^
      startDate.hashCode ^
      endDate.hashCode ^
      planId.hashCode ^
      limit.hashCode ^
      limitPerUser.hashCode ^
      discount.hashCode;
  }
}
