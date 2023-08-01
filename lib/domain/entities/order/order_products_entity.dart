import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:plugin_pjmei_components/domain/entities/product/product_entity.dart';
import 'package:plugin_pjmei_components/domain/entities/product/product_options_entity.dart';

class OrderProductsEntity {
  OrderProductsEntity({
    this.id,
    this.quantidade,
    this.observacao,
    this.opcoes,
    this.produto,
    this.valor,
  });

  factory OrderProductsEntity.fromMap(Map<String, dynamic> map) {
    return OrderProductsEntity(
      id: map['id'].toString(),
      quantidade: map['quantidade'],
      observacao: map['observacao'].toString(),
      opcoes: map['opcoes'] == null
          ? []
          : List<ProductOptionsEntity>.from(
              map['opcoes']?.map((x) => ProductOptionsEntity.fromMap(x))),
      produto: ProductEntity.fromMap(map['produto']),
      valor: num.tryParse(map['valor'].toString()),
    );
  }

  factory OrderProductsEntity.fromJson(String source) =>
      OrderProductsEntity.fromMap(json.decode(source));
  String? id;
  int? quantidade;
  num? valor;
  String? observacao;
  List<ProductOptionsEntity>? opcoes;
  ProductEntity? produto;

  OrderProductsEntity copyWith({
    String? id,
    int? quantidade,
    String? observacao,
    List<ProductOptionsEntity>? opcoes,
    ProductEntity? produto,
    num? valor,
  }) {
    return OrderProductsEntity(
      id: id ?? this.id,
      quantidade: quantidade ?? this.quantidade,
      observacao: observacao ?? this.observacao,
      opcoes: opcoes ?? this.opcoes,
      produto: produto ?? this.produto,
      valor: valor ?? this.valor,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'quantidade': quantidade,
      'observacao': observacao,
      'opcoes': opcoes?.map((x) => x.toMap()).toList(),
      'produto': produto?.toMap(),
      'valor': valor
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'OrderProductsEntity(id: $id, quantidade: $quantidade, observacao: $observacao, opcoes: $opcoes, produto: $produto)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is OrderProductsEntity &&
        o.id == id &&
        o.quantidade == quantidade &&
        o.observacao == observacao &&
        listEquals(o.opcoes, opcoes) &&
        o.produto == produto;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        quantidade.hashCode ^
        observacao.hashCode ^
        opcoes.hashCode ^
        produto.hashCode;
  }
}
