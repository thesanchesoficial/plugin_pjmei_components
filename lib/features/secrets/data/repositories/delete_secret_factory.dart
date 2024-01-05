import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../links/data/usecase/remote_delete_link.dart';
import '../../../links/domain/usecase/delete_link.dart';

DeleteLink makeRemoteDeleteSecret(String id) => RemoteDeleteLink(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/secret/$id'),
);
