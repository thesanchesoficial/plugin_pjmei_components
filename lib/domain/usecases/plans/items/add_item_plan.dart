import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class AddItemPlan {
  Future<PlanItemEntity> exec(PlanItemEntity params, {bool log = false});
}