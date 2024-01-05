import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../domain/entity/plan_list_entity.dart';
import '../../domain/usecase/add_plan.dart';

class RemoteAddPlan implements AddPlan {
  final HttpClient httpClient;
  final String url;

  RemoteAddPlan({required this.httpClient, required this.url});

  @override
  Future<PlanEntity> exec(PlanEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: params.toMap(),
      );
      return PlanEntity.fromMap(httpResponse["success"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
