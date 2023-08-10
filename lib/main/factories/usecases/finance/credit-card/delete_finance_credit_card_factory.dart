import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

DeleteFinanceCreditCard makeRemoteDeleteFinanceCreditCard(String id) => RemoteDeleteFinanceCreditCard(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('/finance/credit-card/$id'),
);