import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

FinanceCreditCardInvoiceDelete makeFinanceCreditCardInvoiceDelete(String cardId, {Map<String, dynamic>? params}) => RemoteFinanceCreditCardInvoiceDelete(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/credit-card/invoice/$cardId/credit-card', params: params),
);