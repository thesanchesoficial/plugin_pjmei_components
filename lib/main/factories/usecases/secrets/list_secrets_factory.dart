import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListSecrets makeRemoteListSecrets(String id) => RemoteListSecrets(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/secret/company/$id'),
);
