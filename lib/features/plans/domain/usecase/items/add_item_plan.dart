import '../../entity/plan_list_entity.dart';

abstract class AddItemPlan {
  Future<PlanItemEntity> exec(PlanItemEntity params, {bool log = false});
}