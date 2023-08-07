import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class GetCoupon {
  Future<CouponDiscount> exec({bool log = false});
}
