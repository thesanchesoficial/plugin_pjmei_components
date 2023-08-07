import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

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
