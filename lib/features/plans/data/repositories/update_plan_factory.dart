import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_plan.dart';
import '../usecase/update_plan.dart';

UpdatePlan makeRemoteUpdatePlan(String id) => RemoteUpdatePlan(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/plan/$id')
);