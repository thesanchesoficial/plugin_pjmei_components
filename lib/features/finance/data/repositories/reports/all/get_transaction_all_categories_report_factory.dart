import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../domain/usecase/report/get_transaction_report.dart';
import '../../../usecase/report/remote_get_transaction_report.dart';

GetTransactionReport makeRemoteGetAllCategoriesReportFactory(String id, {Map<String, dynamic>? params}) => RemoteGetTransactionReport(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('/finance/report/transactions/$id/user/all-categories', params: params),
);