import 'package:plugin_pjmei_components/data/usecases/plan/items/remote_update_item_plan.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/items/update_item_plan.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

UpdateItemPlan makeRemoteUpdateItemPlan(String id) => RemoteUpdateItemPlan(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/plan-item/$id')
);