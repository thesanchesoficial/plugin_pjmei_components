import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/check_user.dart';
import '../usecase/remote_check_user.dart';

CheckUser makeRemoteCheckUser({required Map<String, dynamic> params}) => RemoteCheckUser(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/check-user', params: params),
);
