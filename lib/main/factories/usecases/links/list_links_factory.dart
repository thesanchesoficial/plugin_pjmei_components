import 'package:plugin_pjmei_components/data/usecases/links/remote_list_links.dart';
import 'package:plugin_pjmei_components/domain/usecases/links/list_links.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

ListLinks makeRemoteListLinks(String id) => RemoteListLinks(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/link-company/$id'),
);
