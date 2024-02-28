import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../domain/entity/link_entity.dart';
import '../../domain/usecase/list_links.dart';

class RemoteListLinks implements ListLinks {
  RemoteListLinks({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<LinkEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
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
