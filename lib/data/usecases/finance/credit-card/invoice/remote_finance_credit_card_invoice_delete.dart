import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

class RemoteFinanceCreditCardInvoiceDelete implements FinanceCreditCardInvoiceDelete {
  RemoteFinanceCreditCardInvoiceDelete({required this.httpClient, required this.url});
  final HttpClient httpClient;
  final String url;

  Future<String> exec({bool log = false}) async {
    try {
      final httpResponse = await httpClient.request(
        url: url,
        method: 'delete',
        log: log,
      );
      if ((httpResponse as Map<String, dynamic>).containsKey('error')){
        return httpResponse['error'];
      } else {
        return '';
      }
    } on HttpError catch (_) {
      throw DomainError.unexpected;
    }
  }
}