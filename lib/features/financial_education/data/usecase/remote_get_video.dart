import 'package:plugin_pjmei_components/test/data/http/http.dart';
import 'package:plugin_pjmei_components/test/domain/domain.dart';

import '../../domain/entity/video_entity.dart';
import '../../domain/usecase/get_video.dart';

class RemoteGetVideoFinancialEducation implements GetVideoFinancialEducation {
  RemoteGetVideoFinancialEducation(
      {required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<VideoFinancialEducationEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return VideoFinancialEducationEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
