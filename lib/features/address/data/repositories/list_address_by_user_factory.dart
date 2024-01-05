import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_address_by_user.dart';
import '../usecase/list_address_by_user.dart';

GetListAddress makeRemoteGetListAddressByUser(String userId, {Map<String, dynamic>? params}) => RemoteListAddressByUser(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/address/user/$userId', params: params),
);
