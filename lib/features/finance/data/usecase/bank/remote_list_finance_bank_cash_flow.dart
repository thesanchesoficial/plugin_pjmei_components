import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../../domain/entity/finance_cash_flow_entity.dart';
import '../../../domain/usecase/bank/list_finance_bank_cash_flow.dart';

class RemoteListFinanceBankCashFlow implements ListFinanceBankCashFlow {
  RemoteListFinanceBankCashFlow({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<FinanceCashFlowEntity>> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'get',
        log: log,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')) {
        throw httpResponse['error']['message'];
      }
      return ((httpResponse['success']['bankAccountsAndCashFlow']) as List).map((e) => FinanceCashFlowEntity.fromMap(e)).toList();
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
    catch(e) {
      print(e);
    }
    return [];
  }
}