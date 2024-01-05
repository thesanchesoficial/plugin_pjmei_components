import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_plans.dart';
import '../usecase/list_plans.dart';

ListPlans makeRemoteListPlans({Map<String, dynamic>? params}) => RemoteListPlans(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/plan', params: params)
);