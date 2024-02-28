import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../../domain/usecase/transactions/delete_finance_transaction.dart';

class RemoteDeleteFinanceTransactions implements DeleteFinanceTransaction {
  RemoteDeleteFinanceTransactions({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'delete',
        log: log,
      );
      return httpResponse['code'] == 201;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}