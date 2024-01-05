import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../address/domain/entity/address_entity.dart';
import '../../../ecommerce/domain/entity/ecommerce_entity.dart';
import '../../../user/domain/entity/user_entity.dart';
import 'order_history_entity.dart';
import 'order_products_entity.dart';

class OrderEcommerceEntity {
  String? id;
  String? description;
  String? ecommerceId;
  int? orderId;
  EcommerceEntity? ecommerce;
  UserEntity? user;
  AddressEntity? address;
  String addressId;
  String origin;
  String serviceLocation;
  String type;
  String paymentType;
  String paymentMethod;
  String? paymentStatus;
  num total;
  num subtotal;
  num change;
  num deliveryFee;
  num serviceFee;
  String? cardId;
  String? last4DigitsOfTheCreditCard;
  String? startDate;
  String? endDate;
  String? transactionId;
  String? pix;
  String? document;
  String? createdAt;
  String? updatedAt;
  List<OrderProductsEntity> products;
  List<OrderHistoricEntity> orderHistoric;
  OrderEcommerceEntity({
    this.id,
    this.description,
    this.ecommerceId,
    this.orderId,
    this.ecommerce,
    this.address,
    this.user,
    required this.addressId,
    required this.origin,
    required this.serviceLocation,
    required this.type,
    required this.paymentType,
    required this.paymentMethod,
    this.paymentStatus,
    this.total = 0,
    this.subtotal = 0,
    this.change = 0,
    this.deliveryFee = 0,
    this.serviceFee = 0,
    this.cardId,
    this.last4DigitsOfTheCreditCard,
    this.startDate,
    this.endDate,
    this.transactionId,
    this.pix,
    this.document,
    this.createdAt,
    this.updatedAt,
    required this.products,
    required this.orderHistoric,
  });

  OrderEcommerceEntity copyWith({
    String? id,
    String? ecommerceId,
    String? description,
    int? orderId,
    EcommerceEntity? ecommerce,
    AddressEntity? address,
    UserEntity? user,
    String? addressId,
    String? origin,
    String? serviceLocation,
    String? type,
    String? paymentType,
    String? paymentMethod,
    String? paymentStatus,
    num? total,
    num? subtotal,
    num? change,
    num? deliveryFee,
    num? serviceFee,
    String? cardId,
    String? last4DigitsOfTheCreditCard,
    String? startDate,
    String? endDate,
    String? transactionId,
    String? pix,
    String? document,
    String? createdAt,
    String? updatedAt,
    List<OrderProductsEntity>? products,
    List<OrderHistoricEntity>? orderHistoric,
  }) {
    return OrderEcommerceEntity(
      id: id ?? this.id,
      description: description ?? this.description,
      ecommerceId: ecommerceId ?? this.ecommerceId,
      orderId: orderId ?? this.orderId,
      ecommerce: ecommerce ?? this.ecommerce,
      user: user ?? this.user,
      address: address ?? this.address,
      addressId: addressId ?? this.addressId,
      origin: origin ?? this.origin,
      serviceLocation: serviceLocation ?? this.serviceLocation,
      type: type ?? this.type,
      paymentType: paymentType ?? this.paymentType,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      paymentStatus: paymentStatus ?? this.paymentStatus,
      total: total ?? this.total,
      subtotal: subtotal ?? this.subtotal,
      change: change ?? this.change,
      deliveryFee: deliveryFee ?? this.deliveryFee,
      serviceFee: serviceFee ?? this.serviceFee,
      cardId: cardId ?? this.cardId,
      last4DigitsOfTheCreditCard: last4DigitsOfTheCreditCard ?? this.last4DigitsOfTheCreditCard,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      transactionId: transactionId ?? this.transactionId,
      pix: pix ?? this.pix,
      document: document ?? this.document,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      products: products ?? this.products,
      orderHistoric: orderHistoric ?? this.orderHistoric,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'description': description,
      'ecommerceId': ecommerceId,
      'orderId': orderId,
      'user': user?.toMap(),
      'ecommerce': ecommerce?.toMap(),
      'address': address?.toMap(),
      'addressId': addressId,
      'origin': origin,
      'serviceLocation': serviceLocation,
      'type': type,
      'paymentType': paymentType,
      'paymentMethod': paymentMethod,
      'paymentStatus': paymentStatus,
      'total': total,
      'subtotal': subtotal,
      'change': change,
      'deliveryFee': deliveryFee,
      'serviceFee': serviceFee,
      'cardId': cardId,
      'last4DigitsOfTheCreditCard': last4DigitsOfTheCreditCard,
      'startDate': startDate,
      'endDate': endDate,
      'transactionId': transactionId,
      'pix': pix,
      'document': document,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'products': products.map((x) => x.toMap()).toList(),
      'orderHistoric': orderHistoric.map((x) => x.toMap()).toList(),
    };
  }

  factory OrderEcommerceEntity.fromMap(Map<String, dynamic> map) {
    return OrderEcommerceEntity(
      id: map['id'],
      description: map['description'],
      ecommerceId: map['ecommerceId'],
      orderId: map['orderId'],
      ecommerce: map['ecommerce'] != null ? EcommerceEntity.fromMap(map['ecommerce']) : null,
      address: map['address'] != null ? AddressEntity.fromMap(map['address']) : null,
      user: map['user'] != null ? UserEntity.fromMap(map['user']) : null,
      addressId: map['addressId'] ?? '',
      origin: map['origin'] ?? '',
      serviceLocation: map['serviceLocation'] ?? '',
      type: map['type'] ?? '',
      paymentType: map['paymentType'] ?? '',
      paymentMethod: map['paymentMethod'] ?? '',
      paymentStatus: map['paymentStatus'],
      total: map['total'] ?? 0,
      subtotal: map['subtotal'] ?? 0,
      change: map['change'] ?? 0,
      deliveryFee: map['deliveryFee'] ?? 0,
      serviceFee: map['serviceFee'] ?? 0,
      cardId: map['cardId'],
      last4DigitsOfTheCreditCard: map['last4DigitsOfTheCreditCard'],
      startDate: map['startDate'],
      endDate: map['endDate'],
      transactionId: map['transactionId'],
      pix: map['pix'],
      document: map['document'],
      createdAt: map['createdAt'],
      updatedAt: map['updatedAt'],
      products: map['products'] == null
        ? map['orderProducts'] == null
          ? []
          : List<OrderProductsEntity>.from(map['orderProducts']?.map((x) => OrderProductsEntity.fromMap(x)))
        : List<OrderProductsEntity>.from(map['products']?.map((x) => OrderProductsEntity.fromMap(x))),
      orderHistoric: map['historic'] == null
        ? map['orderHistoric'] == null
          ? []
          : List<OrderHistoricEntity>.from(map['orderHistoric']?.map((x) => OrderHistoricEntity.fromMap(x)))
        : List<OrderHistoricEntity>.from(map['historic']?.map((x) => OrderHistoricEntity.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderEcommerceEntity.fromJson(String source) => OrderEcommerceEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OrderEcommerceEntity(id: $id, description: $description, ecommerceId: $ecommerceId, user: $user, orderId: $orderId, ecommerce: $ecommerce, address: $address, addressId: $addressId, origin: $origin, serviceLocation: $serviceLocation, type: $type, paymentType: $paymentType, paymentMethod: $paymentMethod, paymentStatus: $paymentStatus, total: $total, subtotal: $subtotal, change: $change, deliveryFee: $deliveryFee, serviceFee: $serviceFee, cardId: $cardId, last4DigitsOfTheCreditCard: $last4DigitsOfTheCreditCard, startDate: $startDate, endDate: $endDate, transactionId: $transactionId, pix: $pix, document: $document, createdAt: $createdAt, updatedAt: $updatedAt, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is OrderEcommerceEntity &&
      other.id == id &&
      other.description == description &&
      other.ecommerceId == ecommerceId &&
      other.orderId == orderId &&
      other.ecommerce == ecommerce &&
      other.user == user &&
      other.address == address &&
      other.addressId == addressId &&
      other.origin == origin &&
      other.serviceLocation == serviceLocation &&
      other.type == type &&
      other.paymentType == paymentType &&
      other.paymentMethod == paymentMethod &&
      other.paymentStatus == paymentStatus &&
      other.total == total &&
      other.subtotal == subtotal &&
      other.change == change &&
      other.deliveryFee == deliveryFee &&
      other.serviceFee == serviceFee &&
      other.cardId == cardId &&
      other.last4DigitsOfTheCreditCard == last4DigitsOfTheCreditCard &&
      other.startDate == startDate &&
      other.endDate == endDate &&
      other.transactionId == transactionId &&
      other.pix == pix &&
      other.document == document &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      listEquals(other.products, products) &&
      listEquals(other.orderHistoric, orderHistoric);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      description.hashCode ^
      ecommerceId.hashCode ^
      orderId.hashCode ^
      user.hashCode ^
      ecommerce.hashCode ^
      address.hashCode ^
      addressId.hashCode ^
      origin.hashCode ^
      serviceLocation.hashCode ^
      type.hashCode ^
      paymentType.hashCode ^
      paymentMethod.hashCode ^
      paymentStatus.hashCode ^
      total.hashCode ^
      subtotal.hashCode ^
      change.hashCode ^
      deliveryFee.hashCode ^
      serviceFee.hashCode ^
      cardId.hashCode ^
      last4DigitsOfTheCreditCard.hashCode ^
      startDate.hashCode ^
      endDate.hashCode ^
      transactionId.hashCode ^
      pix.hashCode ^
      document.hashCode ^
      createdAt.hashCode ^
      updatedAt.hashCode ^
      orderHistoric.hashCode ^
      products.hashCode;
  }
}
