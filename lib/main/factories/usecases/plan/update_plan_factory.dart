import 'package:plugin_pjmei_components/data/usecases/plan/update_plan.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/update_plan.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdatePlan makeRemoteUpdatePlan(String id) => RemoteUpdatePlan(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/plan/$id')
);