import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetFinanceBank makeRemoteGetFinaceBank(String bankId) => RemoteGetFinanceBank(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/bank-account/user'),
);