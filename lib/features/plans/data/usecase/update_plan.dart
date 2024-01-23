import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../domain/entity/plan_list_entity.dart';
import '../../domain/usecase/update_plan.dart';

class RemoteUpdatePlan implements UpdatePlan {
  final HttpClient httpClient;
  final String url;

  RemoteUpdatePlan({required this.httpClient, required this.url});

  @override
  Future<PlanEntity> exec(PlanEntity item, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: item.toMap(),
      );
      return PlanEntity.fromMap(httpResponse["success"]['plan']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
