import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListWhiteLabel makeRemoteListWhiteLabelByUser(String id) => RemoteListWhiteLabel(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label/user/$id'),
);
