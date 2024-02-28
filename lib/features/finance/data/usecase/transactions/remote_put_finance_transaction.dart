import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../../domain/entity/finance_transaction_entity.dart';
import '../../../domain/usecase/transactions/post_finance_transaction.dart';

class RemotePutFinanceTransactions implements PostFinanceTransaction {
  RemotePutFinanceTransactions({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<FinanceTransactionEntity> exec(FinanceTransactionEntity body, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'put',
        body: body.toMap(),
        newReturnErrorMsg: true,
        log: log,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return FinanceTransactionEntity.fromMap(httpResponse['success']['transaction']);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}