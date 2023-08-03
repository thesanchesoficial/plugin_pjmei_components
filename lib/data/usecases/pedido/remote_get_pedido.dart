import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetPedido implements GetPedido {
  RemoteGetPedido({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<OrderEntity> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return OrderEntity.fromMap((httpResponse['success']));
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
