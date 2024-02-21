import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/insert_voucher.dart';
import '../usecase/remote_insert_voucher.dart';

AddVoucher makeRemoteAddVoucher() => RemoteAddVoucher(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/coupon'),
);
