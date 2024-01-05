import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/hire_plan.dart';
import '../../usecase/remote_hire_plan.dart';

HirePlan makeRemoteHirePlan() => RemoteHirePlan(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/signature'),
);
