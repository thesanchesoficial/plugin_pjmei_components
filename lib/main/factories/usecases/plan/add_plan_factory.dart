import 'package:plugin_pjmei_components/data/usecases/plan/add_notification.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/add_plan.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

AddPlan makeRemoteAddPlan() => RemoteAddPlan(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/plan')
);