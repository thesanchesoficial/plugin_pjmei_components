import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/add_plan.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteAddPlan implements AddPlan {
  final HttpClient httpClient;
  final String url;

  RemoteAddPlan({
    required this.httpClient,
    required this.url
  });

  @override
  Future<PlanEntity> exec(PlanEntity params) async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'post',
        body: params.toMap(),
      );
      return PlanEntity.fromMap(httpResponse["success"]);
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}