import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_user.dart';
import '../usecase/remote_update_user.dart';

UpdateUser makeRemoteUpdateUser(String id) => RemoteUpdateUser(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/user/$id')
);