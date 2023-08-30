import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

AddWhiteLabel makeRemoteAddWhiteLabel() => RemoteAddWhiteLabel(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label'),
);
