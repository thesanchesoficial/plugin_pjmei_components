import 'package:plugin_pjmei_components/data/http/http_client.dart';

import '../../domain/entity/document_entity.dart';
import '../../domain/usecase/list_documents.dart';

class RemoteListDocuments implements ListDocuments {
  final HttpClient httpClient;
  final String url;

  RemoteListDocuments({required this.httpClient, required this.url});

  @override
  Future<List<DocumentEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      final List<DocumentEntity> _list = [];
      httpResponse['success']['document'].map((e) {
        _list.add(DocumentEntity.fromMap(e));
      }).toList();
      return _list;
    } catch (e) {
      throw e;
    }
  }
}
