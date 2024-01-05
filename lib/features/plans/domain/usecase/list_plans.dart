import '../entity/plan_list_entity.dart';

abstract class ListPlans {
  Future<List<PlanEntity>> exec({bool log = false});
}