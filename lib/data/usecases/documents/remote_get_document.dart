import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';
import 'package:plugin_pjmei_components/domain/usecases/documents/get_documents.dart';

class RemoteGetDocument implements GetDocuments {
  RemoteGetDocument({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<DocumentEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return ((httpResponse['success']['document']) as List)
          .map((e) => DocumentEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
