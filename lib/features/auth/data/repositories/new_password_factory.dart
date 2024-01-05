import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/new_password.dart';
import '../usecase/remote_new_password.dart';

NewPassword makeRemoteNewPassword(String token) => RemoteNewPassword(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/login/reset-password/$token'),
);
