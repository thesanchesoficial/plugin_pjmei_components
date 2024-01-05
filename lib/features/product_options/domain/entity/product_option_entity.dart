import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'product_option_item_entity.dart';

class ProductOptionEntity {
  String id;
  String name;
  List<ProductOptionItemEntity> productOptionItems;
  int min;
  int max;
  bool visibility;
  ProductOptionEntity({
    required this.id,
    required this.name,
    required this.productOptionItems,
    required this.min,
    required this.max,
    required this.visibility,
  });

  ProductOptionEntity copyWith({
    String? id,
    String? name,
    List<ProductOptionItemEntity>? productOptionItems,
    int? min,
    int? max,
    bool? visibility,
  }) {
    return ProductOptionEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      productOptionItems: productOptionItems ?? this.productOptionItems,
      min: min ?? this.min,
      max: max ?? this.max,
      visibility: visibility ?? this.visibility,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'productOptionItems': productOptionItems.map((x) => x.toMap()).toList(),
      'min': min,
      'max': max,
      'visibility': visibility,
    };
  }

  factory ProductOptionEntity.fromMap(Map<String, dynamic> map) {
    return ProductOptionEntity(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      productOptionItems: List<ProductOptionItemEntity>.from(map['productOptionItems']?.map((x) => ProductOptionItemEntity.fromMap(x))),
      min: map['min']?.toInt() ?? 0,
      max: map['max']?.toInt() ?? 0,
      visibility: map['visibility'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductOptionEntity.fromJson(String source) => ProductOptionEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductOptionEntity(id: $id, name: $name, productOptionItems: $productOptionItems, min: $min, max: $max, visibility: $visibility)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProductOptionEntity &&
      other.id == id &&
      other.name == name &&
      listEquals(other.productOptionItems, productOptionItems) &&
      other.min == min &&
      other.max == max &&
      other.visibility == visibility;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      productOptionItems.hashCode ^
      min.hashCode ^
      max.hashCode ^
      visibility.hashCode;
  }
}
