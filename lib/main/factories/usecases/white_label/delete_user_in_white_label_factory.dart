import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

DeleteUserInWhiteLabel makeRemoteDeleteUserInWhiteLabel(String whiteLabelId, String userId) => RemoteDeleteUserInWhiteLabel(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label/$whiteLabelId/user/$userId'),
);