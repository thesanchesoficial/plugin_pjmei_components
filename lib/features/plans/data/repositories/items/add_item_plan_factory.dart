import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../domain/usecase/items/add_item_plan.dart';
import '../../usecase/items/remote_add_item_plan.dart';

AddItemPlan makeRemoteAddItemPlan() => RemoteAddItemPlan(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/plan-item')
);