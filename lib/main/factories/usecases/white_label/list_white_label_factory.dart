import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListWhiteLabel makeRemoteListWhiteLabel() => RemoteListWhiteLabel(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label'),
);
