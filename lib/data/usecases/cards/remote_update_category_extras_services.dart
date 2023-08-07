import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdateCardVenver implements UpdateCardVenver {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateCardVenver({required this.httpClient, required this.url});

  @override
  Future<CardEntity> exec(CardEntity card, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: card.toMap(),
      );
      return CardEntity.fromMap(httpResponse["success"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
