import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/change_password.dart';
import '../usecase/remote_change_password.dart';

ChangePassword makeRemoteChangePassword() => RemoteChangePassword(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/login/change-password'),
);
