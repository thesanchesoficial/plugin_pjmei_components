import 'package:plugin_pjmei_components/test/data/http/http_client.dart';

import '../../domain/entity/subscription_entity.dart';
import '../../domain/usecase/hire_plan.dart';

class RemoteUpdatePlanBySubscription implements HirePlan {
  RemoteUpdatePlanBySubscription({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<SubscriptionEntity> exec(Map params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: params,
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return SubscriptionEntity.fromMap(httpResponse['success']);
    } catch (error) {
      throw error;
    }
  }
}
