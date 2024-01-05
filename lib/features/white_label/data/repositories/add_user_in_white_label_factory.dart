import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/add_user_in_white_label.dart';
import '../usecase/add_user_in_white_label.dart';

AddUserInWhiteLabel makeRemoteAddUserInWhiteLabel(String whiteLabelId) => RemoteAddUserInWhiteLabel(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label/$whiteLabelId/user'),
);