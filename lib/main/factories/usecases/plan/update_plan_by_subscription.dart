import 'package:plugin_pjmei_components/data/usecases/plan/remote_update_plan_by_subscription.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/hire_plan.dart';

import '../../factories.dart';

HirePlan makeRemoteUpdatePlanBySubscription() => RemoteUpdatePlanBySubscription(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/signature'),
    );
