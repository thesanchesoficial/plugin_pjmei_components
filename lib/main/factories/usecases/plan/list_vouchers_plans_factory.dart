import 'package:plugin_pjmei_components/data/usecases/plan/list_vouchers.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/list_vouchers_plans.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListVouchersPlans makeRemoteListVouchersPlans(Map<String, dynamic>? params) => RemoteListVouchersPlans(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/coupon', params: params)
);