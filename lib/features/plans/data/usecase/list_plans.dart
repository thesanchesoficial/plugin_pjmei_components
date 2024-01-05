import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../domain/entity/plan_list_entity.dart';
import '../../domain/usecase/list_plans.dart';

class RemoteListPlans implements ListPlans {
  final HttpClient httpClient;
  final String url;

  RemoteListPlans({required this.httpClient, required this.url});

  @override
  Future<List<PlanEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      return (httpResponse["success"]["plans"] as List)
          .map((e) => PlanEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
