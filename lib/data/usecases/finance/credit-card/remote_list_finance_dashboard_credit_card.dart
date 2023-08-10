import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteListFinanceDashboardCreditCard implements ListFinanceDashboardCreditCard {
  RemoteListFinanceDashboardCreditCard({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<FinanceDashboardCreditCardEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        log: log,
      );
      return FinanceDashboardCreditCardEntity.fromMap(httpResponse['success']['dashboard']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}