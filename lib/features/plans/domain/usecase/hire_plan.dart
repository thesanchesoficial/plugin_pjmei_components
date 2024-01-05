import '../entity/subscription_entity.dart';

abstract class HirePlan {
  Future<SubscriptionEntity> exec(Map params, {bool log = false});
}
