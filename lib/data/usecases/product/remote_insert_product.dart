import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteInsertProduct implements InsertProduct {
  RemoteInsertProduct({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<ProductEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
      );
      return ProductEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
