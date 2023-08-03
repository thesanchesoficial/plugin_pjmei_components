import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

UpdatePageBio makeRemoteUpdatePageBio(String id) => RemoteUpdatePageBio(
    httpClient: makeHttpAdapter(),
    url: makeApiUrl('venver/bio/${companySM.company?.id}/$id'));
