part of '../../usecases.dart';

class _OrderEcommerceApi {

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
}