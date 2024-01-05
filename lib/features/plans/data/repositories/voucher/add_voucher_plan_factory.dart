import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/add_voucher_plan.dart';
import '../../usecase/add_voucher_plan.dart';

AddVoucherPlan makeRemoteAddVoucherPlan() => RemoteAddVoucherPlan(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/coupon')
);