import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../domain/entity/basic_dashboard_entity.dart';
import '../../domain/usecase/get_basic_data.dart';

class RemoteGetBasicData implements GetBasicData {
  RemoteGetBasicData({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<BasicDashboardEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return BasicDashboardEntity.fromMap((httpResponse['success']));
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
