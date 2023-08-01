import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/hire_plan.dart';

class RemoteUpdatePlanBySubscription implements HirePlan {
  RemoteUpdatePlanBySubscription({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<SubscriptionEntity> exec(Map params) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
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
