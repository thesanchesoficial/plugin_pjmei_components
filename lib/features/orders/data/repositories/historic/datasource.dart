part of '../../../../apis.dart';

class _HistoricOrderEcommerceApi {

  Future<OrderHistoricEntity> create({
    required String orderId,
    String? description,
    String? startDate,
    required String status,
  }) {
    return makeRemoteCreateHistoricOrder().exec({
      "orderId": orderId,
      "description": description,
      "startDate": startDate,
      "status": status,
    });
  }

}