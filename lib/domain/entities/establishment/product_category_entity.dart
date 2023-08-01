import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:plugin_pjmei_components/domain/entities/product/product_entity.dart';

class ProductCategoryEntity {
  ProductCategoryEntity({
    this.categoria,
    this.produtos,
  });

  factory ProductCategoryEntity.fromMap(Map<String, dynamic> map) {
    return ProductCategoryEntity(
      categoria: map['categoria'],
      produtos: List<ProductEntity>.from(map['produtos']?.map((x) => ProductEntity.fromMap(x))),
    );
  }

  factory ProductCategoryEntity.fromJson(String source) => ProductCategoryEntity.fromMap(json.decode(source));
  String? categoria;
  List<ProductEntity>? produtos;

  Map<String, dynamic> toMap() {
    return {
      'categoria': categoria,
      'produtos': produtos?.map((x) => x.toMap()).toList(),
    };
  }

  String toJson() => json.encode(toMap());

  ProductCategoryEntity copyWith({
    String? categoria,
    List<ProductEntity>? produtos,
  }) {
    List<ProductEntity> productList = [];
    if (produtos == null) {
      productList = [];
      this.produtos?.forEach((element) {
        productList.add(element.copyWith());
      });
    }
    return ProductCategoryEntity(
      categoria: categoria ?? this.categoria,
      produtos: produtos ?? productList,
    );
  }

  @override
  String toString() => 'ProductCategoryEntity(categoria: $categoria, produtos: $produtos)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductCategoryEntity &&
        other.categoria == categoria &&
        listEquals(other.produtos, produtos,);
  }

  @override
  int get hashCode => categoria.hashCode ^ produtos.hashCode;
}
