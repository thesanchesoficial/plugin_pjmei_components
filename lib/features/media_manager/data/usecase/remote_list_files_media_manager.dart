import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/list_files_media_manager.dart';

class RemoteListFilesMediaManager implements ListFilesMediaManager {
  final HttpClient httpClient;
  final String url;

  RemoteListFilesMediaManager({required this.httpClient, required this.url});

  @override
  Future<List<FileMediaManagerEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      return (httpResponse["success"] as List)
          .map((e) => FileMediaManagerEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
