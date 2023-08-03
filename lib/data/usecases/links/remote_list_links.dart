import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListLinks implements ListLinks {
  RemoteListLinks({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<LinkEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
      );
      final List<LinkEntity> _list = [];
      httpResponse['success'].map((e) {
        _list.add(LinkEntity.fromMap(e));
      }).toList();
      return _list;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
