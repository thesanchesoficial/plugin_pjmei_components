import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';
import 'package:plugin_pjmei_components/domain/usecases/financial_education/list_all_financial_education_videos.dart';

class RemoteGetListVideosFinancialEducation
    implements GetListVideosFinancialEducation {
  RemoteGetListVideosFinancialEducation(
      {required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<VideoFinancialEducationEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return ((httpResponse['success']) as List)
          .map((e) => VideoFinancialEducationEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
