import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

FindWhiteLabel makeRemoteFindWhiteLabel(String id) => RemoteFindWhiteLabel(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label/$id'),
);
