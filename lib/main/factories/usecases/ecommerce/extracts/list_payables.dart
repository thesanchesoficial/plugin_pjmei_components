import 'package:plugin_pjmei_components/data/usecases/extracts/remote_list_payables.dart';
import 'package:plugin_pjmei_components/domain/usecases/extracts/list_payables.dart';

import '../../../factories.dart';

ListPayables makeRemoteListPayables(String id, {required Map<String, dynamic> params}) => RemoteListPayables(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company/$id/payable', params: params),
);
