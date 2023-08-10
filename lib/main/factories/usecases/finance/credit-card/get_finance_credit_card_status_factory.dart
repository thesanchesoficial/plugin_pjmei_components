import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetFinanceCreditCardStatus makeRemoteGetFinanceCreditCardStatus(String id, {Map<String, dynamic>? params}) => RemoteGetFinanceCreditCardStatus(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('/finance/credit-card/invoice/$id/user/period', params: params),
);