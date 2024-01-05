import '../entity/coupon_discount_entity.dart';

abstract class GetCoupon {
  Future<CouponDiscount> exec({bool log = false});
}
