import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

import '../../domain/usecase/update_documents.dart';
import '../usecase/remote_update_documents.dart';

UpdateDocument makeRemoteUpdateDocument(String id) => RemoteUpdateDocument(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/document/$id')
);