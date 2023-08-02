import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';
import 'package:plugin_pjmei_components/domain/usecases/financial_education/list_all_videos.dart';

class RemoteListVideosFinancialEducation implements ListVideosFinancialEducation {
  final HttpClient httpClient;
  final String url;

  RemoteListVideosFinancialEducation({
    required this.httpClient,
    required this.url
  });

  @override
  Future<List<VideoFinancialEducationEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'get',
      );
      return (httpResponse["success"] as List).map((e) => VideoFinancialEducationEntity.fromMap(e)).toList();
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}