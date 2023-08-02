import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/update_plan.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteUpdatePlan implements UpdatePlan {
  final HttpClient httpClient;
  final String url;

  RemoteUpdatePlan({
    required this.httpClient,
    required this.url
  });

  @override
  Future<PlanEntity> exec(PlanEntity item) async {
    try {
      final httpResponse = await httpClient.request(
        url: url, 
        method: 'put',
        body: item.toMap(),
      );
      return PlanEntity.fromMap(httpResponse["success"]);
    } on HttpError catch(_) {
      throw DomainError.unexpected;
    }
  }
}