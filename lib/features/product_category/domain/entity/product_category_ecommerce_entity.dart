import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../products/domain/entity/product_ecommerce_entity.dart';

class ProductCategoryEcommerceEntity {
  String id;
  String name;
  int index;
  List<ProductEcommerceEntity>? product;
  ProductCategoryEcommerceEntity({
    required this.id,
    required this.name,
    required this.index,
    this.product,
  });

  ProductCategoryEcommerceEntity copyWith({
    String? id,
    String? name,
    int? index,
    List<ProductEcommerceEntity>? product,
  }) {
    return ProductCategoryEcommerceEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      index: index ?? this.index,
      product: product ?? this.product,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'index': index,
      'product': product?.map((x) => x.toMap()).toList(),
    };
  }

  factory ProductCategoryEcommerceEntity.fromMap(Map<String, dynamic> map) {
    return ProductCategoryEcommerceEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      index: map['index']?.toInt() ?? 0,
      product: map['product'] != null ? List<ProductEcommerceEntity>.from(map['product']?.map((x) => ProductEcommerceEntity.fromMap(x))) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductCategoryEcommerceEntity.fromJson(String source) => ProductCategoryEcommerceEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductCategoryEcommerceEntity(id: $id, name: $name, index: $index, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProductCategoryEcommerceEntity &&
      other.id == id &&
      other.name == name &&
      other.index == index &&
      listEquals(other.product, product);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      index.hashCode ^
      product.hashCode;
  }
}
