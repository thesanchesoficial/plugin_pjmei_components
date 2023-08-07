import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class GetMyPlan {
  Future<SubscriptionEntity> exec({bool log = false});
}
