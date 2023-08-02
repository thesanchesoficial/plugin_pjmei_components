import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';
import 'package:plugin_pjmei_components/domain/usecases/financial_education/update_video_financial_education.dart';

class RemoteUpdateVideoFinancialEducation implements UpdateVideoFinancialEducation {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateVideoFinancialEducation({
    required this.httpClient,
    required this.url
  });

  @override
  Future<VideoFinancialEducationEntity> exec(VideoFinancialEducationEntity video) async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'put',
        body: video.toMap(),
      );
      return VideoFinancialEducationEntity.fromMap(httpResponse["success"]);
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}