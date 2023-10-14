import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListDocuments makeRemoteListDocumentsByCnpj(String cnpj, {Map<String, dynamic>? params}) => RemoteListDocuments(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/document/cnpj/$cnpj', params: params)
);