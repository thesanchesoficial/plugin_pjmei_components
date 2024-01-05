import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../domain/usecase/credit-card/invoice/finance_credit_card_invoice_delete.dart';
import '../../../usecase/credit-card/invoice/remote_finance_credit_card_invoice_delete.dart';

FinanceCreditCardInvoiceDelete makeFinanceCreditCardInvoiceDelete(String cardId, {Map<String, dynamic>? params}) => RemoteFinanceCreditCardInvoiceDelete(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/credit-card/invoice/$cardId/credit-card', params: params),
);