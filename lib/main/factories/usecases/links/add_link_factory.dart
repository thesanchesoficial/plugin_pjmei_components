import 'package:plugin_pjmei_components/data/usecases/links/remote_add_link.dart';
import 'package:plugin_pjmei_components/domain/usecases/links/add_link.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

AddLink makeRemoteAddLink() => RemoteAddLink(
    httpClient: makeHttpAdapter(), url: makeApiUrl('venver/linkCompany'));
