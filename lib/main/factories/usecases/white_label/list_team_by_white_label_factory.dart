import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListUsers makeRemoteListTeamByWhiteLabel(String id) => RemoteListUsers(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label/$id/user'),
);
