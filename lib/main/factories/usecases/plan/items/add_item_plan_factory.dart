import 'package:plugin_pjmei_components/data/usecases/plan/items/remote_add_item_plan.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/items/add_item_plan.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

AddItemPlan makeRemoteAddItemPlan() => RemoteAddItemPlan(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/plan-item')
);