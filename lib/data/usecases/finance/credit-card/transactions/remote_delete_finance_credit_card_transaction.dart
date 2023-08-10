import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteDeleteFinanceCreditCardTransactionFactory implements DeleteFinanceCreditCardTransactionFactory {
  RemoteDeleteFinanceCreditCardTransactionFactory({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'delete',
        log: log,
      );
      return num.parse(httpResponse['success']['code'].toString()) == 200;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}