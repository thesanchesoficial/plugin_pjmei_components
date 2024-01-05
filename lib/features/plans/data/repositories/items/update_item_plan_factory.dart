import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/items/update_item_plan.dart';
import '../../usecase/items/remote_update_item_plan.dart';

UpdateItemPlan makeRemoteUpdateItemPlan(String id) => RemoteUpdateItemPlan(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/plan-item/$id')
);