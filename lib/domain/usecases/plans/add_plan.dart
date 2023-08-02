import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddPlan {
  Future<PlanEntity> exec(PlanEntity params);
}