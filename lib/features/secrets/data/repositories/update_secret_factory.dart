import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_secret.dart';
import '../usecase/remote_update_secret.dart';

UpdateSecret makeRemoteUpdateSecrets(String id) => RemoteUpdateSecret(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/secret/$id'),
);
