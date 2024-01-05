import 'dart:convert';

class CouponDiscount {

  CouponDiscount({
    this.planValue,
    this.discountValue,
    this.total,
  });

  factory CouponDiscount.fromMap(Map<String, dynamic> map) {
    return CouponDiscount(
      planValue: map['planValue'] ?? '',
      discountValue: map['discountValue'] ?? '',
      total: map['total'] ?? '',
    );
  }

  factory CouponDiscount.fromJson(String source) => CouponDiscount.fromMap(json.decode(source));
  String? planValue;
  String? discountValue;
  String? total;
  

  CouponDiscount copyWith({
    String? planValue,
    String? discountValue,
    String? total,
  }) {
    return CouponDiscount(
      planValue: planValue ?? this.planValue,
      discountValue: discountValue ?? this.discountValue,
      total: total ?? this.total,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'planValue': planValue,
      'discountValue': discountValue,
      'total': total,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CouponDiscount &&
      other.planValue == planValue &&
      other.discountValue == discountValue &&
      other.total == total;
  }

  @override
  int get hashCode => planValue.hashCode ^ discountValue.hashCode ^ total.hashCode;

  @override
  String toString() => 'CouponDiscount(planValue: $planValue, discountValue: $discountValue, total: $total)';
}
