import '../../entity/plan_list_entity.dart';

abstract class UpdateItemPlan {
  Future<PlanItemEntity> exec(PlanItemEntity module, {bool log = false});
}