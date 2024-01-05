import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_business.dart';
import '../usecase/remote_list_business.dart';

ListBusines makeRemoteListBusiness(Map<String, dynamic> params) => RemoteListBusiness(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/company', params: params)
);