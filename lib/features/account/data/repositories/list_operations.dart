import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_operations.dart';
import '../usecase/remote_list_operations.dart';

ListOperations makeRemoteListOperations(String id, {required Map<String, dynamic> params}) => RemoteListOperations(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/companies/$id/balance/operations', params: params),
);
