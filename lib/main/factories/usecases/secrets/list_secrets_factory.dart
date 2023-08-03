import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

ListSecrets makeRemoteListSecrets() => RemoteListSecrets(
    httpClient: makeHttpAdapter(),
    url: makeApiUrl('venver/secret/${companySM.company?.id}'));
