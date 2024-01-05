import '../entity/subscription_entity.dart';

abstract class GetMySubscriptions {
  Future<List<SubscriptionEntity>> exec({bool log = false});
}
