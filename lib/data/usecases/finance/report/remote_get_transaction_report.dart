import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

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