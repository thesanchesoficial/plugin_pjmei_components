import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class UpdateItemPlan {
  Future<PlanItemEntity> exec(PlanItemEntity module);
}