import 'package:plugin_pjmei_components/data/usecases/plan/remote_get_my_plan.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/get_my_plan.dart';

import '../../../factories.dart';

GetMyPlan makeRemoteGetMyPlan(String id) => RemoteGetMyPlan(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/signature/current/$id/subscriber'), // id comp ou user
);
