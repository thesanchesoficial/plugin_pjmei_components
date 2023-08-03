import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteInsertImageAws implements InsertImageAws {
  RemoteInsertImageAws({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  @override
  Future<FileMediaAwsEntity> exec(Map params) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
        body: params,
      );
      return FileMediaAwsEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
