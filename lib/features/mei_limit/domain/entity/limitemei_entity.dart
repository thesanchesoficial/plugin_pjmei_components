import 'dart:convert';

class LimiteMeiEntity {
  String? faturamento;

  LimiteMeiEntity({
    this.faturamento,
  });

  LimiteMeiEntity copyWith({
    String? faturamento,
  }) {
    return LimiteMeiEntity(
      faturamento: faturamento ?? this.faturamento,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'faturamento': faturamento,
    };
  }

  factory LimiteMeiEntity.fromMap(Map<String, dynamic> map) {
    return LimiteMeiEntity(
      faturamento: map['faturamento'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory LimiteMeiEntity.fromJson(String source) =>
      LimiteMeiEntity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'LimiteMeiEntity(faturamento: $faturamento)';
  }
}
