import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/list_vouchers_plans.dart';
import '../../usecase/list_vouchers.dart';

ListVouchersPlans makeRemoteListVouchersPlans({Map<String, dynamic>? params}) => RemoteListVouchersPlans(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/coupon', params: params)
);