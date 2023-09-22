import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:plugin_pjmei_components/domain/entities/ecommerce/product/product_ecommerce_entity.dart';

class ProductCategoryEcommerceEntity {
  String id;
  String name;
  int index;
  List<ProductEcommerceEntity>? items;
  ProductCategoryEcommerceEntity({
    required this.id,
    required this.name,
    required this.index,
    this.items,
  });

  ProductCategoryEcommerceEntity copyWith({
    String? id,
    String? name,
    int? index,
    List<ProductEcommerceEntity>? items,
  }) {
    return ProductCategoryEcommerceEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      index: index ?? this.index,
      items: items ?? this.items,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'index': index,
      'items': items?.map((x) => x.toMap()).toList(),
    };
  }

  factory ProductCategoryEcommerceEntity.fromMap(Map<String, dynamic> map) {
    return ProductCategoryEcommerceEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      index: map['index']?.toInt() ?? 0,
      items: map['items'] != null ? List<ProductEcommerceEntity>.from(map['items']?.map((x) => ProductEcommerceEntity.fromMap(x))) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductCategoryEcommerceEntity.fromJson(String source) => ProductCategoryEcommerceEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductCategoryEcommerceEntity(id: $id, name: $name, index: $index, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProductCategoryEcommerceEntity &&
      other.id == id &&
      other.name == name &&
      other.index == index &&
      listEquals(other.items, items);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      index.hashCode ^
      items.hashCode;
  }
}
