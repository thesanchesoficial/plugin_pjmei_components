import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../../domain/entity/finance_bank_account_entity.dart';
import '../../../domain/usecase/bank/get_finance_bank.dart';

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