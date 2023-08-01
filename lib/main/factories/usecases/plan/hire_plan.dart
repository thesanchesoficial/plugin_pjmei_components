import 'package:plugin_pjmei_components/data/usecases/plan/remote_hire_plan.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/hire_plan.dart';

import '../../factories.dart';

HirePlan makeRemoteHirePlan() => RemoteHirePlan(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/signature'),
    );
