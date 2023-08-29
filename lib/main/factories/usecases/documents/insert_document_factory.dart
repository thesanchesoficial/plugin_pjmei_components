import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

AddDocument makeRemoteAddDocument() => RemoteAddDocument(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/document')
);