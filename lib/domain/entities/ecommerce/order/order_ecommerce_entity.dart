import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:plugin_pjmei_components/domain/entities/ecommerce/order/order_products_entity.dart';

class OrderEcommerceEntity {
  String? id;
  final String ecommerceId;
  final String addressId;
  final String origin;
  final String serviceLocation;
  final String type;
  final String paymentType;
  final String paymentMethod;
  num total;
  num subtotal;
  num change;
  num deliveryFee;
  num serviceFee;
  String? cardId;
  String? last4DigitsOfTheCreditCard;
  String? startDate;
  String? document;
  List<OrderProductsEntity> products;
  OrderEcommerceEntity({
    this.id,
    required this.ecommerceId,
    required this.addressId,
    required this.origin,
    required this.serviceLocation,
    required this.type,
    required this.paymentType,
    required this.paymentMethod,
    this.total = 0,
    this.subtotal = 0,
    this.change = 0,
    this.deliveryFee = 0,
    this.serviceFee = 0,
    this.cardId,
    this.last4DigitsOfTheCreditCard,
    this.startDate,
    this.document,
    required this.products,
  });

  OrderEcommerceEntity copyWith({
    String? id,
    String? ecommerceId,
    String? addressId,
    String? origin,
    String? serviceLocation,
    String? type,
    String? paymentType,
    String? paymentMethod,
    num? total,
    num? subtotal,
    num? change,
    num? deliveryFee,
    num? serviceFee,
    String? cardId,
    String? last4DigitsOfTheCreditCard,
    String? startDate,
    String? document,
    List<OrderProductsEntity>? products,
  }) {
    return OrderEcommerceEntity(
      id: id ?? this.id,
      ecommerceId: ecommerceId ?? this.ecommerceId,
      addressId: addressId ?? this.addressId,
      origin: origin ?? this.origin,
      serviceLocation: serviceLocation ?? this.serviceLocation,
      type: type ?? this.type,
      paymentType: paymentType ?? this.paymentType,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      total: total ?? this.total,
      subtotal: subtotal ?? this.subtotal,
      change: change ?? this.change,
      deliveryFee: deliveryFee ?? this.deliveryFee,
      serviceFee: serviceFee ?? this.serviceFee,
      cardId: cardId ?? this.cardId,
      last4DigitsOfTheCreditCard: last4DigitsOfTheCreditCard ?? this.last4DigitsOfTheCreditCard,
      startDate: startDate ?? this.startDate,
      document: document ?? this.document,
      products: products ?? this.products,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'ecommerceId': ecommerceId,
      'addressId': addressId,
      'origin': origin,
      'serviceLocation': serviceLocation,
      'type': type,
      'paymentType': paymentType,
      'paymentMethod': paymentMethod,
      'total': total,
      'subtotal': subtotal,
      'change': change,
      'deliveryFee': deliveryFee,
      'serviceFee': serviceFee,
      'cardId': cardId,
      'last4DigitsOfTheCreditCard': last4DigitsOfTheCreditCard,
      'startDate': startDate,
      'document': document,
      'products': products.map((x) => x.toMap()).toList(),
    };
  }

  factory OrderEcommerceEntity.fromMap(Map<String, dynamic> map) {
    return OrderEcommerceEntity(
      id: map['id'],
      ecommerceId: map['ecommerceId'] ?? '',
      addressId: map['addressId'] ?? '',
      origin: map['origin'] ?? '',
      serviceLocation: map['serviceLocation'] ?? '',
      type: map['type'] ?? '',
      paymentType: map['paymentType'] ?? '',
      paymentMethod: map['paymentMethod'] ?? '',
      total: map['total'] ?? 0,
      subtotal: map['subtotal'] ?? 0,
      change: map['change'] ?? 0,
      deliveryFee: map['deliveryFee'] ?? 0,
      serviceFee: map['serviceFee'] ?? 0,
      cardId: map['cardId'],
      last4DigitsOfTheCreditCard: map['last4DigitsOfTheCreditCard'],
      startDate: map['startDate'],
      document: map['document'],
      products: List<OrderProductsEntity>.from(map['products']?.map((x) => OrderProductsEntity.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderEcommerceEntity.fromJson(String source) => OrderEcommerceEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OrderEcommerceEntity(id: $id, ecommerceId: $ecommerceId, addressId: $addressId, origin: $origin, serviceLocation: $serviceLocation, type: $type, paymentType: $paymentType, paymentMethod: $paymentMethod, total: $total, subtotal: $subtotal, change: $change, deliveryFee: $deliveryFee, serviceFee: $serviceFee, cardId: $cardId, last4DigitsOfTheCreditCard: $last4DigitsOfTheCreditCard, startDate: $startDate, document: $document, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is OrderEcommerceEntity &&
      other.id == id &&
      other.ecommerceId == ecommerceId &&
      other.addressId == addressId &&
      other.origin == origin &&
      other.serviceLocation == serviceLocation &&
      other.type == type &&
      other.paymentType == paymentType &&
      other.paymentMethod == paymentMethod &&
      other.total == total &&
      other.subtotal == subtotal &&
      other.change == change &&
      other.deliveryFee == deliveryFee &&
      other.serviceFee == serviceFee &&
      other.cardId == cardId &&
      other.last4DigitsOfTheCreditCard == last4DigitsOfTheCreditCard &&
      other.startDate == startDate &&
      other.document == document &&
      listEquals(other.products, products);
  }

  @override
  int get hashCode {
    return ecommerceId.hashCode ^
      id.hashCode ^
      addressId.hashCode ^
      origin.hashCode ^
      serviceLocation.hashCode ^
      type.hashCode ^
      paymentType.hashCode ^
      paymentMethod.hashCode ^
      total.hashCode ^
      subtotal.hashCode ^
      change.hashCode ^
      deliveryFee.hashCode ^
      serviceFee.hashCode ^
      cardId.hashCode ^
      last4DigitsOfTheCreditCard.hashCode ^
      startDate.hashCode ^
      document.hashCode ^
      products.hashCode;
  }
}
