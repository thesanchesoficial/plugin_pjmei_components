import 'package:plugin_pjmei_components/data/usecases/links/remote_update_link.dart';
import 'package:plugin_pjmei_components/domain/usecases/links/update_link.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

UpdateLink makeRemoteUpdateLink(String id) => RemoteUpdateLink(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/link-company/$id'),
);
