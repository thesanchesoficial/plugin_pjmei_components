import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../../domain/entity/finance_transaction_report_entity.dart';
import '../../../domain/usecase/report/get_cash_flow_report.dart';

class RemoteGetCashFlowReport implements GetCashFlowReport {
  RemoteGetCashFlowReport({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<List<FinanceResultReportEntity>> exec(FinanceReportEntity params, {bool log = false}) async {

    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
        body: params.toMap(),
        log: log,
      );
      if (httpResponse.containsKey('error')){
        throw httpResponse['error']['message'];
      }
      final List<FinanceResultReportEntity> result = [];
      (httpResponse['success']['report'] as List).forEach((element) {
        result.add(FinanceResultReportEntity.fromMap(element));
      });
      return result;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}