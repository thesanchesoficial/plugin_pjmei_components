import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

DeleteModule makeRemoteDeleteDocument(String id) => RemoteDeleteModule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/document/$id')
);