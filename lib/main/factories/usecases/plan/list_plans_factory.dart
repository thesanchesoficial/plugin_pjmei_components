import 'package:plugin_pjmei_components/data/usecases/plan/list_plans.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/list_plans.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListPlans makeRemoteListPlans({Map<String, dynamic>? params}) => RemoteListPlans(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/plan', params: params)
);