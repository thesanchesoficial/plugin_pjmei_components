import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

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
