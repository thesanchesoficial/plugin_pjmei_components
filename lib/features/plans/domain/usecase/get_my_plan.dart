import '../entity/subscription_entity.dart';

abstract class GetMyPlan {
  Future<SubscriptionEntity> exec({bool log = false});
}
