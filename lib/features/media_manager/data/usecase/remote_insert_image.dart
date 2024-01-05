import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/insert_image.dart';

class RemoteInsertImage implements InsertImage {
  final HttpClient httpClient;
  final String url;

  RemoteInsertImage({required this.httpClient, required this.url});

  @override
  Future<FileMediaManagerEntity> exec(Map params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: params,
      );
      return FileMediaManagerEntity.fromMap(httpResponse);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
