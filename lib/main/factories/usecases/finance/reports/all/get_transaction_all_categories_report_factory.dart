import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetTransactionReport makeRemoteGetAllCategoriesReportFactory(String id, {Map<String, dynamic>? params}) => RemoteGetTransactionReport(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('/finance/report/transactions/$id/user/all-categories', params: params),
);