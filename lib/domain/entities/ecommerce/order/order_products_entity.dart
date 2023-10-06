import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:plugin_pjmei_components/domain/entities/ecommerce/product/product_ecommerce_entity.dart';

class OrderProductsEntity {
  String? id;
  int quantity;
  String? observation;
  num amount;
  List<OrderProductOptionsEntity> options;
  ProductEcommerceEntity product;
  OrderProductsEntity({
    this.id,
    required this.quantity,
    this.observation,
    required this.amount,
    required this.product,
    this.options = const [],
  });

  OrderProductsEntity copyWith({
    String? id,
    int? quantity,
    String? observation,
    num? amount,
    List<OrderProductOptionsEntity>? options,
    ProductEcommerceEntity? product,
  }) {
    return OrderProductsEntity(
      id: id ?? this.id,
      quantity: quantity ?? this.quantity,
      observation: observation ?? this.observation,
      amount: amount ?? this.amount,
      options: options ?? this.options,
      product: product ?? this.product,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'quantity': quantity,
      'observation': observation,
      'amount': amount,
      'options': options.map((x) => x.toMap()).toList(),
      'product': product.toMap(),
    };
  }

  factory OrderProductsEntity.fromMap(Map<String, dynamic> map) {
    return OrderProductsEntity(
      id: map['id'],
      quantity: map['quantity']?.toInt() ?? 0,
      observation: map['observation'],
      amount: map['amount'] ?? 0,
      options: List<OrderProductOptionsEntity>.from(map['options']?.map((x) => OrderProductOptionsEntity.fromMap(x))),
      product: ProductEcommerceEntity.fromMap(map['product']),
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderProductsEntity.fromJson(String source) => OrderProductsEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OrderProductsEntity(id: $id, quantity: $quantity, observation: $observation, amount: $amount, options: $options, product: $product)';
  }


  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is OrderProductsEntity &&
      other.id == id &&
      other.quantity == quantity &&
      other.observation == observation &&
      other.amount == amount &&
      listEquals(other.options, options) &&
      other.product == product;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      quantity.hashCode ^
      observation.hashCode ^
      amount.hashCode ^
      options.hashCode ^
      product.hashCode;
  }
}

class OrderProductOptionsEntity {
  String id;
  int quantity;
  List<OrderProductItemOptionEntity> items;
  OrderProductOptionsEntity({
    required this.id,
    required this.quantity,
    required this.items,
  });

  OrderProductOptionsEntity copyWith({
    String? id,
    int? quantity,
    List<OrderProductItemOptionEntity>? items,
  }) {
    return OrderProductOptionsEntity(
      id: id ?? this.id,
      quantity: quantity ?? this.quantity,
      items: items ?? this.items,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'quantity': quantity,
      'items': items.map((x) => x.toMap()).toList(),
    };
  }

  factory OrderProductOptionsEntity.fromMap(Map<String, dynamic> map) {
    return OrderProductOptionsEntity(
      id: map['id'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
      items: List<OrderProductItemOptionEntity>.from(map['items']?.map((x) => OrderProductItemOptionEntity.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderProductOptionsEntity.fromJson(String source) => OrderProductOptionsEntity.fromMap(json.decode(source));

  @override
  String toString() => 'OrderProductOptionsEntity(id: $id, quantity: $quantity, items: $items)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is OrderProductOptionsEntity &&
      other.id == id &&
      other.quantity == quantity &&
      listEquals(other.items, items);
  }

  @override
  int get hashCode => id.hashCode ^ quantity.hashCode ^ items.hashCode;
}

class OrderProductItemOptionEntity {
  final String id;
  final int quantity;
  final num amount;
  OrderProductItemOptionEntity({
    required this.id,
    required this.quantity,
    required this.amount,
  });

  OrderProductItemOptionEntity copyWith({
    String? id,
    int? quantity,
    num? amount,
  }) {
    return OrderProductItemOptionEntity(
      id: id ?? this.id,
      quantity: quantity ?? this.quantity,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'quantity': quantity,
      'amount': amount,
    };
  }

  factory OrderProductItemOptionEntity.fromMap(Map<String, dynamic> map) {
    return OrderProductItemOptionEntity(
      id: map['id'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
      amount: map['amount'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderProductItemOptionEntity.fromJson(String source) => OrderProductItemOptionEntity.fromMap(json.decode(source));

  @override
  String toString() => 'OrderProductItemOptionEntity(id: $id, quantity: $quantity, amount: $amount)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is OrderProductItemOptionEntity &&
      other.id == id &&
      other.quantity == quantity &&
      other.amount == amount;
  }

  @override
  int get hashCode => id.hashCode ^ quantity.hashCode ^ amount.hashCode;
}
