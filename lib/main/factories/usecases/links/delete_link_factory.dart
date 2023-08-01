import 'package:plugin_pjmei_components/data/usecases/links/remote_delete_link.dart';
import 'package:plugin_pjmei_components/domain/usecases/links/delete_link.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

DeleteLink makeRemoteDeleteLink(String id) => RemoteDeleteLink(
    httpClient: makeHttpAdapter(), url: makeApiUrl('venver/linkCompany/$id'));
