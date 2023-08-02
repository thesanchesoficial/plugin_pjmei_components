import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteGetListPlans implements GetListPlans {
  RemoteGetListPlans({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<PlanEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return ((httpResponse['success']['plans']) as List)
          .map((e) => PlanEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
