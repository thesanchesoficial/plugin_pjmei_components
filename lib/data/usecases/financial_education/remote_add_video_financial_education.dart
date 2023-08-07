import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteAddVideoFinancialEducation implements AddVideoFinancialEducation {
  final HttpClient httpClient;
  final String url;

  RemoteAddVideoFinancialEducation(
      {required this.httpClient, required this.url});

  @override
  Future<VideoFinancialEducationEntity> exec(
      VideoFinancialEducationEntity params,
      {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: {
          'url': params.url,
          'cover': params.cover,
          'title': params.title,
          'description': params.description,
          'aspectRatio': params.aspectRatio,
          'index': params.index,
          'category': params.categoryId,
        },
      );
      return VideoFinancialEducationEntity.fromMap(httpResponse["success"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
