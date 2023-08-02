import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteListItemsPlans implements ListItemsPlans {
  final HttpClient httpClient;
  final String url;

  RemoteListItemsPlans({
    required this.httpClient,
    required this.url
  });

  @override
  Future<List<PlanItemEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'get',
      );
      return (httpResponse["success"]["plans"] as List).map((e) => PlanItemEntity.fromMap(e)).toList();
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}