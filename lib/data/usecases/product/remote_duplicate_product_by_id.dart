import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteDuplicateProductById implements DuplicateProductById {
  RemoteDuplicateProductById({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<ProductEntity> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
      );
      return ProductEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
