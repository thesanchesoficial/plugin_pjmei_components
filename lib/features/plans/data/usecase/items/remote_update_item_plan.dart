import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../../domain/entity/plan_list_entity.dart';
import '../../../domain/usecase/items/update_item_plan.dart';

class RemoteUpdateItemPlan implements UpdateItemPlan {
  final HttpClient httpClient;
  final String url;

  RemoteUpdateItemPlan({required this.httpClient, required this.url});

  @override
  Future<PlanItemEntity> exec(PlanItemEntity item, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'put',
        body: item.toMap(),
      );
      return PlanItemEntity.fromMap(httpResponse["success"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
