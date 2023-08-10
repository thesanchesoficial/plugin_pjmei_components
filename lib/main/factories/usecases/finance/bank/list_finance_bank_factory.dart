import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ListFinanceBank makeRemoteListFinanceBank(String userId, {Map<String, dynamic>? params}) => RemoteListFinanceBank(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/bank-account/$userId/user', params: params),
);