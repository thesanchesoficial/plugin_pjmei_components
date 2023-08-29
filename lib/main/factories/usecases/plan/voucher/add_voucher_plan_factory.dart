import 'package:plugin_pjmei_components/data/usecases/plan/add_voucher_plan.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/add_voucher_plan.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

AddVoucherPlan makeRemoteAddVoucherPlan() => RemoteAddVoucherPlan(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/coupon')
);