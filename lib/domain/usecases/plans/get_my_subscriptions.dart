import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

abstract class GetMySubscriptions {
  Future<List<SubscriptionEntity>> exec({bool log = false});
}
