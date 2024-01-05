import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/add_plan.dart';
import '../usecase/add_plan.dart';

AddPlan makeRemoteAddPlan() => RemoteAddPlan(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/plan')
);