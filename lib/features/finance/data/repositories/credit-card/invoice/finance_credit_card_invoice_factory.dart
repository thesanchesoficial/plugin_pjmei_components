import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../domain/usecase/credit-card/invoice/finance_credit_card_invoice.dart';
import '../../../usecase/credit-card/invoice/remote_finance_credit_card_invoice.dart';

FinanceCreditCardInvoice makeFinanceCreditCardInvoice() => RemoteFinanceCreditCardInvoice(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/credit-card/invoice'),
);