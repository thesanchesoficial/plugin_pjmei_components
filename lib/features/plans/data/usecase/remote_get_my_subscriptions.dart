import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../domain/entity/subscription_entity.dart';
import '../../domain/usecase/get_my_subscriptions.dart';

class RemoteGetMySubscriptions implements GetMySubscriptions {
  RemoteGetMySubscriptions({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<SubscriptionEntity>> exec({bool log = false}) async {
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
      return ((httpResponse['success']['subscription']) as List).map((e) => SubscriptionEntity.fromMap(e)).toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
