import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/items/list_items_plan.dart';
import '../../usecase/items/remote_list_items_plan.dart';

ListItemsPlans makeRemoteListItemsPlans(String id, {Map<String, dynamic>? params}) => RemoteListItemsPlans(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/plan-item/plan/$id', params: params)
);