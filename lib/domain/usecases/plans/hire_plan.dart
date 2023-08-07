import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class HirePlan {
  Future<SubscriptionEntity> exec(Map params, {bool log = false});
}
