import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/update_voucher_plan.dart';
import '../../usecase/update_voucher_plan.dart';

UpdateVoucherPlan makeRemoteUpdateVoucherPlan(String id) => RemoteUpdateVoucherPlan(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/coupon/$id')
);