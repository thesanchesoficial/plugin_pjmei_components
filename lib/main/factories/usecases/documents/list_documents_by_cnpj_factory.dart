import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListDocuments makeRemoteListDocuments(String cnpj) => RemoteListDocuments(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/document/cnpj/$cnpj')
);