import 'package:plugin_pjmei_components/data/usecases/coupon/remote_get_coupon.dart';
import 'package:plugin_pjmei_components/domain/usecases/coupon/get_coupon.dart';

import '../../../factories.dart';

GetCoupon makeRemoteGetCoupon(String id) => RemoteGetCoupon(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/coupon/$id/validation'),
);
