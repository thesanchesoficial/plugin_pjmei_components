import 'voucher_discount_entity.dart';
export 'voucher_discount_entity.dart';

class VoucherEntity {
  final String? id;
  final String name;
  final String code;
  final String startDate;
  final String endDate;
  final String? planId;
  final int? limit;
  final int? limitPerUser;
  final VoucherDiscountEntity discount;
  final bool isVisible;
  final int? cycles;

  VoucherEntity({
    this.id,
    required this.name,
    required this.code,
    required this.startDate,
    required this.endDate,
    this.planId,
    this.limit,
    this.limitPerUser,
    required this.discount,
    required this.isVisible,
    this.cycles,
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
    bool? isVisible,
    int? cycles,
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
      isVisible: isVisible ?? this.isVisible,
      cycles: cycles ?? this.cycles,
    );
  }

  @override
  String toString() {
    return 'VoucherEntity(id: $id, name: $name, code: $code, startDate: $startDate, endDate: $endDate, planId: $planId, limit: $limit, limitPerUser: $limitPerUser, discount: $discount, isVisible: $isVisible, cycles: $cycles)';
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
      other.discount == discount &&
      other.isVisible == isVisible &&
      other.cycles == cycles;
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
      discount.hashCode ^
      isVisible.hashCode ^
      cycles.hashCode;
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
      'isVisible': isVisible,
      'cycles': cycles,
    };
  }

  static VoucherEntity fromMap(Map<String, dynamic> map) {
    return VoucherEntity(
      id: map['id'],
      name: map['name'],
      code: map['code'],
      startDate: map['startDate'],
      endDate: map['endDate'],
      planId: map['planId'],
      limit: map['limit'],
      limitPerUser: map['limitPerUser'],
      discount: VoucherDiscountEntity.fromMap(map['discount']),
      isVisible: map['isVisible'],
      cycles: map['cycles'],
    );
  }
}