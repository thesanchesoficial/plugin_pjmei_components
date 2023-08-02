import 'package:plugin_pjmei_components/domain/entities/plan_list_entity.dart';

abstract class GetListPlans {
  Future<List<PlanEntity>> exec();
}
