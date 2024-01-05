import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_list_plans.dart';
import '../usecase/remote_get_list_plans.dart';

GetListPlans makeRemoteGetListPlans({Map<String, dynamic>? params}) => RemoteGetListPlans(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/plan-client', params: params),
);
