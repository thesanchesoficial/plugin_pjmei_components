import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListFilesMediaManager implements ListFilesMediaManager {
  final HttpClient httpClient;
  final String url;

  RemoteListFilesMediaManager({
    required this.httpClient,
    required this.url
  });

  @override
  Future<List<FileMediaManagerEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'get',
      );
      return (httpResponse["success"] as List).map((e) => FileMediaManagerEntity.fromMap(e)).toList();
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}