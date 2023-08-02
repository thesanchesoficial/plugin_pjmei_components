import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListProductsByEstablishmentId
    implements ListProductsByEstablishmentId {
  RemoteListProductsByEstablishmentId(
      {required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<ProductEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
      );
      final List<ProductEntity> _list = [];
      httpResponse['success']['items'].map((e) {
        try {
          _list.add(ProductEntity.fromMap(e));
        } catch (e) {
          //e
        }
      }).toList();
      return _list;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
