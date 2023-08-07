import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/entities/coupon_discount_entity.dart';
import 'package:plugin_pjmei_components/domain/usecases/coupon/get_coupon.dart';

class RemoteGetCoupon implements GetCoupon {
  RemoteGetCoupon({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<CouponDiscount> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return CouponDiscount.fromMap((httpResponse['success']['discount']));
    } catch (error) {
      throw error;
    }
  }
}
