import 'package:plugin_pjmei_components/data/usecases/secrets/remote_update_secret.dart';
import 'package:plugin_pjmei_components/domain/usecases/secrets/update_secret.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';

UpdateSecret makeRemoteUpdateSecrets(String id) => RemoteUpdateSecret(
    httpClient: makeHttpAdapter(), url: makeApiUrl('venver/secret/$id'));
