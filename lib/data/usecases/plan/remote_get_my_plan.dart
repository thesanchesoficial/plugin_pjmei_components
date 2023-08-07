import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

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
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      if (httpResponse['success']['signature'] != null) {
        return SubscriptionEntity.fromMap(
            (httpResponse['success']['signature']));
      } else {
        return SubscriptionEntity(
          active: false,
          dateEnd: '1990-01-01T10:10:10.999Z',
          dateStart: '1990-01-01T10:10:10.999Z',
          status: 'Sem',
          plan:
              PlanSubscriptionEntity.fromMap((httpResponse['success']['plan'])),
        );
      }
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
