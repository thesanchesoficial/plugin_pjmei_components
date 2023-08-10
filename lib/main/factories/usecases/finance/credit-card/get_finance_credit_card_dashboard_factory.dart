import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetFinanceCreditCard makeRemoteGetFinaceCreditCardDashBoard(String id, {Map<String, dynamic>? params}) => RemoteGetFinanceCreditCard(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/finance/credit-card/$id/period', params: params),
);