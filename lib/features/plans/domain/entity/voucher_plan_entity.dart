import 'dart:convert';

class VoucherPlanEntity {
  String? id;
  String name;
  String code;
  String? startDate;
  String? endDate;
  Map? discount;
  String planId;
  num? charges;
  num? limit;
  bool isVisible;
  
  VoucherPlanEntity({
    this.id,
    required this.name,
    required this.code,
    this.startDate,
    this.endDate,
    this.discount,
    required this.planId,
    this.charges,
    this.limit,
    required this.isVisible,
  });
  


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'code': code,
      'startDate': startDate,
      'endDate': endDate,
      'discount': discount,
      'planId': planId,
      'charges': charges,
      'limit': limit,
      'isVisible': isVisible,
    };
  }

  factory VoucherPlanEntity.fromMap(Map<String, dynamic> map) {
    return VoucherPlanEntity(
      id: map['id'],
      name: map['name'] ?? '',
      code: map['code'] ?? '',
      startDate: map['startDate'],
      endDate: map['endDate'],
      discount: map['discount'],
      planId: map['planId'] ?? '',
      charges: map['charges'],
      limit: map['limit'],
      isVisible: map['isVisible'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory VoucherPlanEntity.fromJson(String source) => VoucherPlanEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'VoucherPlanEntity(id: $id, name: $name, code: $code, startDate: $startDate, endDate: $endDate, discount: $discount, planId: $planId, charges: $charges, limit: $limit, isVisible: $isVisible)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is VoucherPlanEntity &&
      other.id == id &&
      other.name == name &&
      other.code == code &&
      other.startDate == startDate &&
      other.endDate == endDate &&
      other.discount == discount &&
      other.planId == planId &&
      other.charges == charges &&
      other.limit == limit &&
      other.isVisible == isVisible;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      code.hashCode ^
      startDate.hashCode ^
      endDate.hashCode ^
      discount.hashCode ^
      planId.hashCode ^
      charges.hashCode ^
      limit.hashCode ^
      isVisible.hashCode;
  }

  VoucherPlanEntity copyWith({
    String? id,
    String? name,
    String? code,
    String? startDate,
    String? endDate,
    Map? discount,
    String? planId,
    num? charges,
    num? limit,
    bool? isVisible,
  }) {
    return VoucherPlanEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      discount: discount ?? this.discount,
      planId: planId ?? this.planId,
      charges: charges ?? this.charges,
      limit: limit ?? this.limit,
      isVisible: isVisible ?? this.isVisible,
    );
  }
}
