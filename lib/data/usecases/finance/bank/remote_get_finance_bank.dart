import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteGetFinanceBank implements GetFinanceBank {
  RemoteGetFinanceBank({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<FinanceBankAccountEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get', 
        log: log,
      );

      return FinanceBankAccountEntity.fromMap(httpResponse['success']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}