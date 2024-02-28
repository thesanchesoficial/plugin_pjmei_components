part of '../../../apis.dart';

class _OrderEcommerceApi {

  final historic = _HistoricOrderEcommerceApi();

  Future<OrderEcommerceEntity> create({
    required String ecommerceId,
    required String addressId,
    required String origin,
    required String serviceLocation,
    required String type,
    required String paymentType,
    required String paymentMethod,
    required num total,
    required num subtotal,
    num change = 0,
    num deliveryFee = 0,
    num serviceFee = 0,
    String? cardId,
    String? last4DigitsOfTheCreditCard,
    String? startDate,
    String? document,
    required List<OrderProductsEntity> products,
  }) {
    return makeRemoteCreateOrder().exec({
      "ecommerceId": ecommerceId,
      "addressId": addressId,
      "origin": origin,
      "serviceLocation": serviceLocation,
      "type": type,
      "paymentType": paymentType,
      "paymentMethod": paymentMethod,
      "total": total,
      "subtotal": subtotal,
      "change": change,
      "deliveryFee": deliveryFee,
      "serviceFee": serviceFee,
      "cardId": cardId,
      "last4DigitsOfTheCreditCard": last4DigitsOfTheCreditCard,
      "startDate": startDate,
      "document": document,
      "products": products.map((e) => e.toMap()).toList(),
    });
  }

  Future<OrderEcommerceEntity> update({
    required String orderId,
    String? description,
    String? paymentStatus,
  }) {
    return makeRemoteUpdateOrder(orderId).exec({
      'description': description,
      'paymentStatus': paymentStatus,
    });
  }

  Future<OrderEcommerceEntity> find({required String id}) {
    return makeRemoteFindOrder(id).exec();
  }

  Future<List<OrderEcommerceEntity>> listByUser() {
    return makeRemoteListOrdersByUser().exec();
  }

  Future<List<OrderEcommerceEntity>> listByEcommerce({required String id}) {
    return makeRemoteListOrdersByEcommerce(id).exec();
  }
}