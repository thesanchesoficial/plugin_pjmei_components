import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/usecases/online_store/find_online_store_by_company_id.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

class RemoteFindOnlineStoreByCompanyId implements FindOnlineStoreByCompanyId {
  RemoteFindOnlineStoreByCompanyId(
      {required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<EstablishmentEntity> exec() async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
      );
      return EstablishmentEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
