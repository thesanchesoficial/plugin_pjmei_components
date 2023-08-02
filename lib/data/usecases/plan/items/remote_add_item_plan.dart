import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteAddItemPlan implements AddItemPlan {
  final HttpClient httpClient;
  final String url;

  RemoteAddItemPlan({
    required this.httpClient,
    required this.url
  });

  @override
  Future<PlanItemEntity> exec(PlanItemEntity params) async {
    try {
      Map<dynamic, dynamic> body = params.toMap();
      body["id"] = null;
      body.removeWhere((key, value) => key == "id");
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'post',
        body: body,
      );
      return PlanItemEntity.fromMap(httpResponse["success"]);
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}