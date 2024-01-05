import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../user/data/usecase/remote_list_users.dart';
import '../../../user/domain/usecase/list_users.dart';

ListUsers makeRemoteListTeamByWhiteLabel(String id) => RemoteListUsers(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label/$id/user'),
);
