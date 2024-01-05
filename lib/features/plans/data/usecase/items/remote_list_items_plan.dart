import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../../domain/entity/plan_list_entity.dart';
import '../../../domain/usecase/items/list_items_plan.dart';

class RemoteListItemsPlans implements ListItemsPlans {
  final HttpClient httpClient;
  final String url;

  RemoteListItemsPlans({required this.httpClient, required this.url});

  @override
  Future<List<PlanItemEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        log: log,
        method: 'get',
      );
      return (httpResponse["success"]["plans"] as List)
          .map((e) => PlanItemEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
