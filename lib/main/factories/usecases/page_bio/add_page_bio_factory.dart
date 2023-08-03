import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

AddPageBio makeRemoteAddPageBio() => RemoteAddPageBio(
    httpClient: makeHttpAdapter(),
    url: makeApiUrl('venver/bio/${companySM.company?.id}'));
