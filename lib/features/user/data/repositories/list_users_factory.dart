import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_users.dart';
import '../usecase/remote_list_users.dart';

ListUsers makeRemoteListUsers() => RemoteListUsers(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/user')
);