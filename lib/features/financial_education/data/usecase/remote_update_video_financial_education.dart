import 'package:plugin_pjmei_components/test/data/http/http.dart';
import 'package:plugin_pjmei_components/test/domain/domain.dart';

import '../../domain/entity/video_entity.dart';
import '../../domain/usecase/update_video_financial_education.dart';

class RemoteUpdateVideoFinancialEducation
    implements UpdateVideoFinancialEducation {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateVideoFinancialEducation(
      {required this.httpClient, required this.url});

  @override
  Future<VideoFinancialEducationEntity> exec(
      VideoFinancialEducationEntity video,
      {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: video.toMap(),
      );
      return VideoFinancialEducationEntity.fromMap(httpResponse["success"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
