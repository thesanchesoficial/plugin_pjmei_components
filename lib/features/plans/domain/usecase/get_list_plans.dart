import '../entity/plan_list_entity.dart';

abstract class GetListPlans {
  Future<List<PlanEntity>> exec({bool log = false});
}
