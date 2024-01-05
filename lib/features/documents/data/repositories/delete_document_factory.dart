import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

import '../../../modules/data/usecase/remote_delete_module.dart';
import '../../../modules/domain/usecase/delete_module.dart';

DeleteModule makeRemoteDeleteDocument(String id) => RemoteDeleteModule(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/document/$id')
);