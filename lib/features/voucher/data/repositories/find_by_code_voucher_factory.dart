

import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../plans/domain/usecase/get_coupon.dart';
import '../usecase/remote_get_voucher.dart';

GetVoucher makeRemoteGetVoucherByCode(String code) => RemoteGetVoucher(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/coupon/code/$code'),
);
