import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

import '../../domain/usecase/list_documents.dart';
import '../usecase/remote_list_documents.dart';

ListDocuments makeRemoteListDocumentsByCnpj(String cnpj, {Map<String, dynamic>? params}) => RemoteListDocuments(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/document/cnpj/$cnpj', params: params)
);