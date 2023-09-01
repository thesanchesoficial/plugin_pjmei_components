import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

AddUserInWhiteLabel makeRemoteAddUserInWhiteLabel(String whiteLabelId) => RemoteAddUserInWhiteLabel(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label/$whiteLabelId/user'),
);