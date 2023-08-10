import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteListFinanceTransactionsSearch implements ListFinanceTransactionsSearch {
  RemoteListFinanceTransactionsSearch({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<FinanceTransactionEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        log: log,
      );
      return List<FinanceTransactionEntity>.from(httpResponse['success']['transactions']?.map((x) => FinanceTransactionEntity.fromMap(x)));
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}