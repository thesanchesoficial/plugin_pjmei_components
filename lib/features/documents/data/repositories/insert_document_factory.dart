import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

import '../../domain/usecase/create_document.dart';
import '../usecase/remote_create_documents.dart';

AddDocument makeRemoteAddDocument() => RemoteAddDocument(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/document')
);