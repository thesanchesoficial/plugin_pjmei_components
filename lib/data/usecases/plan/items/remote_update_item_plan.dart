import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

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
