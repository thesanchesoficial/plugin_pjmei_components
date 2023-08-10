import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListFinanceCreditCardTransactionFactory makeRemoteListFinanceCreditCardTransactionFactory(String id, {Map<String, dynamic>? params}) => RemoteListFinanceCreditCardTransactionFactory(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('/finance/transaction/$id/credit-card/period', params: params),
);