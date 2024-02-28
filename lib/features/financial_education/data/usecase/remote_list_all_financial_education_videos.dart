import 'package:plugin_pjmei_components/data/http/http.dart';

import '../../domain/entity/video_entity.dart';
import '../../domain/usecase/list_all_financial_education_videos.dart';

class RemoteGetListVideosFinancialEducation implements GetListVideosFinancialEducation {
  RemoteGetListVideosFinancialEducation({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<VideoFinancialEducationEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
        newReturnErrorMsg: true,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return ((httpResponse['success']) as List).map((e) => VideoFinancialEducationEntity.fromMap(e)).toList();
    } catch (e) {
      throw e;
    }
  }
}
