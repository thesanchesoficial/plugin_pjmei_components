import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteListFinanceCreditCardTransactionFactory implements ListFinanceCreditCardTransactionFactory {
  RemoteListFinanceCreditCardTransactionFactory({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<FinanceTransactionDataEntity> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        log: log,
      );
      return FinanceTransactionDataEntity.fromMap(httpResponse['success']['transactions']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}