import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../domain/entity/transaction_entity.dart';
import '../../domain/usecase/list_transactions_by_subscriptions.dart';

class RemoteListTransactionsBySubscriptions implements ListTransactionsBySubscriptions {
  RemoteListTransactionsBySubscriptions({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<TransactionEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
          url: url, log: log, method: 'get', newReturnErrorMsg: true);
      if ((httpResponse as Map<String, dynamic>).containsKey('erro')) {
        throw HttpError.notFound;
      }
      return ((httpResponse['success']['payments']) as List)
          .map((e) => TransactionEntity.fromMap(e))
          .toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}
