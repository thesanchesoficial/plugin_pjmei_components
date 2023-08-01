import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/domain/entities/transaction_finance_opened_entity.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';
import 'package:plugin_pjmei_components/domain/usecases/payment_assistant/list_transactions_by_date.dart';

class RemoteListTransactionsFinaceOpenedEntity
    implements ListTransactionsFinaceOpenedEntity {
  RemoteListTransactionsFinaceOpenedEntity(
      {required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<TransactionFinaceOpenedEntity>> exec(
      Map<dynamic, dynamic> params) async {
    try {
      final httpResponse =
          await httpClient.request(url: url, method: 'post', body: params);
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
