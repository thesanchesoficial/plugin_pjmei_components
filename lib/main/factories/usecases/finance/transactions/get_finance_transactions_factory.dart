import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetFinanceTransaction makeRemoteGetFinanceTransactions(String bankId) => RemoteGetFinanceTransactions(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/finance/bank-account/$bankId'),
);