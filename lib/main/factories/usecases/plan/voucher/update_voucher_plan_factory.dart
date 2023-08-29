import 'package:plugin_pjmei_components/data/usecases/plan/update_voucher_plan.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/update_voucher_plan.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateVoucherPlan makeRemoteUpdateVoucherPlan(String id) => RemoteUpdateVoucherPlan(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/coupon/$id')
);