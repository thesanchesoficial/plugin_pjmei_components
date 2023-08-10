import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteListFinanceTransactionsByFilter implements ListFinanceTransactionsByFilter {
  RemoteListFinanceTransactionsByFilter({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<FinanceTransactionDataEntity> exec(FinanceFilterEntity filter, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
        body: filter.toMap(),
        log: log,
      );
      return FinanceTransactionDataEntity.fromMap(httpResponse['success']['transactions']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}