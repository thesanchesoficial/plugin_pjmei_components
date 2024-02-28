import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/subscription_entity.dart';
import '../../domain/usecase/get_my_plan.dart';

class RemoteGetMyPlan implements GetMyPlan {
  RemoteGetMyPlan({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<SubscriptionEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      if (httpResponse['success']['subscription'] != null) {
        return SubscriptionEntity.fromMap((httpResponse['success']['subscription']));
      } else {
        throw 'notSubscription';
      }
    } catch (e) {
      throw e;
    }
  }
}
