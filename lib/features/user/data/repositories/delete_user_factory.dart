import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/delete_user.dart';
import '../usecase/remote_delete_user.dart';

DeleteUser makeRemoteDeleteUser(String id) => RemoteDeleteUser(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/user/$id')
);