import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

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