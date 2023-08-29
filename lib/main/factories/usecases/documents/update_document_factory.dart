import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

UpdateDocument makeRemoteUpdateDocument(String id) => RemoteUpdateDocument(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/document/$id')
);