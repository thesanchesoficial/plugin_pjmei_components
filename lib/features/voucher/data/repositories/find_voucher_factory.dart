
import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../plans/domain/usecase/get_coupon.dart';
import '../usecase/remote_get_voucher.dart';

GetVoucher makeRemoteGetVoucher(String id) => RemoteGetVoucher(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/coupon/$id'),
);
