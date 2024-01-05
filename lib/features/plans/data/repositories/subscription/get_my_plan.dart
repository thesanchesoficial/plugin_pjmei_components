import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/get_my_plan.dart';
import '../../usecase/remote_get_my_plan.dart';

GetMyPlan makeRemoteGetMyPlan(String id) => RemoteGetMyPlan(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/signature/current/$id/subscriber'), // id comp ou user
);
