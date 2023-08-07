import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class ListPlans {
  Future<List<PlanEntity>> exec({bool log = false});
}