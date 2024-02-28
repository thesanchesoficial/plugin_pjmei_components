import 'package:plugin_pjmei_components/data/http/http_client.dart';
import 'package:plugin_pjmei_components/data/http/http_error.dart';
import 'package:plugin_pjmei_components/domain/helpers/domain_error.dart';

import '../../../../domain/usecase/credit-card/invoice/finance_credit_card_invoice_delete.dart';

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