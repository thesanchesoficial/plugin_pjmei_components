import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_limitemei.dart';
import '../usecase/remote_get_limitemei.dart';

GetLimiteMei makeRemoteGetMeiLimit(String id, {Map<String, dynamic>? params}) => RemoteGetLimiteMei(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('finance/revenue/$id/user/annual', params: params),
);