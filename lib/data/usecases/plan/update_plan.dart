import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

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
      return PlanEntity.fromMap(httpResponse["success"]);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
