import 'dart:convert';

class ShippingEntity {

  ShippingEntity({
    this.raio,
    this.valor,
  });

  factory ShippingEntity.fromMap(Map<String, dynamic> map) {
    return ShippingEntity(
      raio: map['raio'],
      valor: map['preco'],
    );
  }

  factory ShippingEntity.fromJson(String source) => ShippingEntity.fromMap(json.decode(source));
  num? raio;
  num? valor;


  Map<String, dynamic> toMap() {
    return {
      'raio': raio,
      'preco': valor,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'Frete(raio: $raio, valor: $valor)';

  ShippingEntity copyWith({
    num? raio,
    num? valor,
  }) {
    return ShippingEntity(
      raio: raio ?? this.raio,
      valor: valor ?? this.valor,
    );
  }
}