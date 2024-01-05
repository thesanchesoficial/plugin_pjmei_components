import 'package:plugin_pjmei_components/test/data/http/http_client.dart';
import 'package:plugin_pjmei_components/test/data/http/http_error.dart';
import 'package:plugin_pjmei_components/test/domain/helpers/domain_error.dart';

import '../../../../domain/entity/finance_credit_card_invoice_entity.dart';
import '../../../../domain/usecase/credit-card/invoice/finance_credit_card_invoice.dart';

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