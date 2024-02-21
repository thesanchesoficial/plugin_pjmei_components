import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../voucher/data/usecase/remote_get_voucher.dart';
import '../../../domain/usecase/get_coupon.dart';

GetVoucher makeRemoteGetCoupon(String id) => RemoteGetVoucher(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/coupon/$id/validation'),
);
