import 'package:plugin_pjmei_components/data/usecases/secrets/remote_list_secrets.dart';
import 'package:plugin_pjmei_components/domain/usecases/secrets/list_secrets.dart';
import 'package:plugin_pjmei_components/main/factories/http/api_url_factory.dart';
import 'package:plugin_pjmei_components/main/factories/http/http_client_factory.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListSecrets makeRemoteListSecrets() => RemoteListSecrets(
    httpClient: makeHttpAdapter(),
    url: makeApiUrl('venver/secret/${companySM.company?.id}'));
