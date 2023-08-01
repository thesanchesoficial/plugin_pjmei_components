import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/image/insert_image.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteInsertImage implements InsertImage {
  RemoteInsertImage({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  @override
  Future<FileMediaManagerEntity> exec(Map params) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
        body: params,
      );
      return FileMediaManagerEntity.fromMap(httpResponse);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
