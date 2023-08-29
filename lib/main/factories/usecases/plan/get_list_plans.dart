import 'package:plugin_pjmei_components/data/usecases/plan/remote_get_list_plans.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/get_list_plans.dart';

import '../../factories.dart';

GetListPlans makeRemoteGetListPlans({Map<String, dynamic>? params}) => RemoteGetListPlans(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/plan-client', params: params),
);
