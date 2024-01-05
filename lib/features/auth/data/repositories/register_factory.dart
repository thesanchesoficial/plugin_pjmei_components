import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/register.dart';
import '../usecase/remote_register.dart';

Register makeRemoteRegister() => RemoteRegister(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/sign-up'),
);
