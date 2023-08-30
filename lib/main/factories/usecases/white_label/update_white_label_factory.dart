import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

UpdateWhiteLabel makeRemoteUpdateWhiteLabel(String id) => RemoteUpdateWhiteLabel(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label/$id'),
);
