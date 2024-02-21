import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_voucher.dart';
import '../usecase/remote_update_voucher.dart';

UpdateVoucher makeRemoteUpdateVoucher(String id) => RemoteUpdateVoucher(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/coupon/$id'),
);
