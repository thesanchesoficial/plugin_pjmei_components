import '../../entity/plan_list_entity.dart';

abstract class ListItemsPlans {
  Future<List<PlanItemEntity>> exec({bool log = false});
}