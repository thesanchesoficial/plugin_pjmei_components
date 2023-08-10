import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteFinanceCreditCardInvoice implements FinanceCreditCardInvoice {
  RemoteFinanceCreditCardInvoice({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<bool> exec(FinanceCreditCardInvoiceEntity body, {bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'post',
        body: body.toMap(),
        log: log,
      );
      return httpResponse['success']['code'] == 201;
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}