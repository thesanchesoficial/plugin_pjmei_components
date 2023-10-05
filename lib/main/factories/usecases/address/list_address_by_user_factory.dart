import 'package:plugin_pjmei_components/data/data.dart';
import 'package:plugin_pjmei_components/domain/domain.dart';

import '../../factories.dart';

GetListAddress makeRemoteGetListAddressByUser(String userId, {Map<String, dynamic>? params}) => RemoteListAddressByUser(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/address/user/$userId', params: params),
);
