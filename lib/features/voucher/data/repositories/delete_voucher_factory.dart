import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/delete_voucher.dart';
import '../usecase/remote_delete_voucher.dart';

DeleteVoucher makeRemoteDeleteVoucher(String id) => RemoteDeleteVoucher(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/coupon/$id'),
);
