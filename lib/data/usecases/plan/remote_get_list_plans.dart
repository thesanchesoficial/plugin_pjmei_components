import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/entities/plan_list_entity.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/get_list_plans.dart';

class RemoteGetListPlans implements GetListPlans {
  RemoteGetListPlans({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<PlanListEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return ((httpResponse['success']['plans']) as List)
          .map((e) => PlanListEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
