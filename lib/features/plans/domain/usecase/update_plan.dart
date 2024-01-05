import '../entity/plan_list_entity.dart';

abstract class UpdatePlan {
  Future<PlanEntity> exec(PlanEntity module, {bool log = false});
}