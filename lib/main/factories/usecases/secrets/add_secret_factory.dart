import 'package:plugin_pjmei_components/data/usecases/secrets/remote_add_secret.dart';
import 'package:plugin_pjmei_components/domain/usecases/secrets/add_secret.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

AddSecret makeRemoteAddSecrets() => RemoteAddSecret(
    httpClient: makeHttpAdapter(), url: makeApiUrl('venver/secret'));
