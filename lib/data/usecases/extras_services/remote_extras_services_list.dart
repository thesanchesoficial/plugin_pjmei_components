import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteExtrasServicesList implements ExtrasServicesList {
  final HttpClient httpClient;
  final String url;

  RemoteExtrasServicesList({required this.httpClient, required this.url});

  @override
  Future<List<CategoryExtraServiceEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      return (httpResponse["success"] as List)
          .map((e) => CategoryExtraServiceEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
