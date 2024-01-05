import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_payables.dart';
import '../usecase/remote_list_payables.dart';

ListPayables makeRemoteListPayables(String id, {required Map<String, dynamic> params}) => RemoteListPayables(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company/$id/payable', params: params),
);
