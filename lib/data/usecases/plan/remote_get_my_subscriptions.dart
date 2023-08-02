import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetMySubscriptions implements GetMySubscriptions {
  RemoteGetMySubscriptions({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<SubscriptionEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return ((httpResponse['success']['signatures']) as List)
          .map((e) => SubscriptionEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
