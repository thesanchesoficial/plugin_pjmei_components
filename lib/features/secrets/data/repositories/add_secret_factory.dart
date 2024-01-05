import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/add_secret.dart';
import '../usecase/remote_add_secret.dart';

AddSecret makeRemoteAddSecrets() => RemoteAddSecret(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/secret'),
);
