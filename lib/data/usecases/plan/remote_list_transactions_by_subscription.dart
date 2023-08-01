import 'package:plugin_pjmei_components/data/http/http.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import 'package:plugin_pjmei_components/domain/usecases/plans/list_transactions_by_subscriptions.dart';

class RemoteListTransactionsBySubscriptions
    implements ListTransactionsBySubscriptions {
  RemoteListTransactionsBySubscriptions(
      {required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<TransactionEntity>> exec() async {
    try {
      final httpResponse = await httpClient.request(
          url: url, method: 'get', newReturnErrorMsg: true);
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
