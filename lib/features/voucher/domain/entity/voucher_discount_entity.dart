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

  factory VoucherDiscountEntity.fromJson(String source) =>
      VoucherDiscountEntity.fromMap(json.decode(source));

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
