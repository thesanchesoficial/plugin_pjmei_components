import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../../domain/entity/plan_list_entity.dart';
import '../../../domain/usecase/items/add_item_plan.dart';

class RemoteAddItemPlan implements AddItemPlan {
  final HttpClient httpClient;
  final String url;

  RemoteAddItemPlan({required this.httpClient, required this.url});

  @override
  Future<PlanItemEntity> exec(PlanItemEntity params, {bool log = false}) async {
    try {
      Map<dynamic, dynamic> body = params.toMap();
      body["id"] = null;
      body.removeWhere((key, value) => key == "id");
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'post',
        body: body,
      );
      return PlanItemEntity.fromMap(httpResponse["success"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
