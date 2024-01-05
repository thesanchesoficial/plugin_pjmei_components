import 'package:plugin_pjmei_components/test/data/http/http.dart';
import '../../domain/entity/transaction_finance_opened_entity.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';
import '../../domain/usecase/list_transactions_by_date.dart';

class RemoteListTransactionsFinaceOpenedEntity
    implements ListTransactionsFinaceOpenedEntity {
  RemoteListTransactionsFinaceOpenedEntity(
      {required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<TransactionFinaceOpenedEntity>> exec(Map<dynamic, dynamic> params,
      {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
          url: url, log: log, method: 'post', body: params);
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return ((httpResponse['success']['transactions']['items']) as List)
          .map((e) => TransactionFinaceOpenedEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
