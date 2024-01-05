import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../voucher/data/usecase/remote_get_coupon.dart';
import '../../../domain/usecase/get_coupon.dart';

GetCoupon makeRemoteGetCoupon(String id) => RemoteGetCoupon(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/coupon/$id/validation'),
);
