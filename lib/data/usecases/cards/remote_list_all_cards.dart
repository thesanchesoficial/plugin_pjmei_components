import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListAllCards implements ListAllCards {
  final HttpClient httpClient;
  final String url;

  RemoteListAllCards({required this.httpClient, required this.url});

  @override
  Future<List<CardEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      return (httpResponse["success"] as List)
          .map((e) => CardEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
