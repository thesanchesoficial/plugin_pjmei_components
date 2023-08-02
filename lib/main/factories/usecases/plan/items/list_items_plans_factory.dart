import 'package:plugin_pjmei_components/data/usecases/plan/items/remote_list_items_plan.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/items/list_items_plan.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListItemsPlans makeRemoteListItemsPlans(String id, Map<String, dynamic>? params) => RemoteListItemsPlans(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/plan-item/plan/$id', params: params)
);