import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

DeleteFinanceCreditCardTransactionFactory makeRemoteDeleteFinanceCreditCardTransactionFactory(String id, {Map<String, dynamic>? params}) => RemoteDeleteFinanceCreditCardTransactionFactory(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('/finance/transaction/$id/credit-card', params: params),
);