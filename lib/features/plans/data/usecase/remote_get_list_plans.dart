import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../domain/entity/plan_list_entity.dart';
import '../../domain/usecase/get_list_plans.dart';

class RemoteGetListPlans implements GetListPlans {
  RemoteGetListPlans({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<PlanEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return ((httpResponse['success']['plans']) as List).map((e) => PlanEntity.fromMap(e)).toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
