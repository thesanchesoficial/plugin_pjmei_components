import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteAddCardVenver implements AddCardVenver {
  final HttpClient httpClient;
  final String url;

  RemoteAddCardVenver({required this.httpClient, required this.url});

  @override
  Future<CardEntity> exec(CardEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: {
          'title': params.title,
          'description': params.description,
          'displayType': params.displayType,
          'index': params.index,
          'image': params.image,
          'route': params.route,
          'category': params.category,
          'params': params.params,
        },
      );
      return CardEntity.fromMap(httpResponse["success"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
