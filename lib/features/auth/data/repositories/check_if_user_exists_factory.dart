import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/check_if_user_exists.dart';
import '../usecase/remote_check_if_user_exists.dart';

CheckIfUserExists makeRemoteCheckIfUserExistsByEmail(String email) => RemoteCheckIfUserExists(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/check/email/$email'),
);
