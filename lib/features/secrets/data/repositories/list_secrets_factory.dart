import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/list_secrets.dart';
import '../usecase/remote_list_secrets.dart';

ListSecrets makeRemoteListSecrets(String id) => RemoteListSecrets(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/secret/company/$id'),
);
