import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/login.dart';
import '../usecase/remote_login.dart';

Login makeRemoteLogin() => RemoteLogin(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/login'),
);
