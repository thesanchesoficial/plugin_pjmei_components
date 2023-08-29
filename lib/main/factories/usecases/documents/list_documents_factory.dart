import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListDocuments makeRemoteListDocuments() => RemoteListDocuments(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/document')
);