import '../entity/plan_list_entity.dart';

abstract class AddPlan {
  Future<PlanEntity> exec(PlanEntity params, {bool log = false});
}