import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../domain/entity/subscription_entity.dart';
import '../../domain/usecase/hire_plan.dart';

class RemoteHirePlan implements HirePlan {
  RemoteHirePlan({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<SubscriptionEntity> exec(Map params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: params,
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return SubscriptionEntity.fromMap(httpResponse['success']['subscription']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
