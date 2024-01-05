import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../../domain/entity/finance_transaction_report_entity.dart';
import '../../../domain/usecase/report/get_transaction_report.dart';

class RemoteGetTransactionReport implements GetTransactionReport {
  RemoteGetTransactionReport({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<Map<String, dynamic>> exec(FinanceReportEntity params, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
        body: params.toMap(),
        log: log,
      );
      return Map<String, dynamic>.from(httpResponse);
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}