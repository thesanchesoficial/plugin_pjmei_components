import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/insert_image_aws.dart';

class RemoteInsertImageAws implements InsertImageAws {
  RemoteInsertImageAws({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  @override
  Future<FileMediaAwsEntity> exec(Map params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: params,
      );
      return FileMediaAwsEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
