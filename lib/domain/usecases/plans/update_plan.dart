import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdatePlan {
  Future<PlanEntity> exec(PlanEntity module, {bool log = false});
}