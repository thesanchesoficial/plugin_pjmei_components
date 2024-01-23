import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/hire_plan.dart';
import '../../usecase/remote_update_plan_by_subscription.dart';

HirePlan makeRemoteUpdatePlanBySubscription() => RemoteUpdatePlanBySubscription(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/subscription/card'),
);
