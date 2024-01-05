import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/delete_user_in_white_label.dart';
import '../usecase/delete_user_in_white_label.dart';

DeleteUserInWhiteLabel makeRemoteDeleteUserInWhiteLabel(String whiteLabelId, String userId) => RemoteDeleteUserInWhiteLabel(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/white-label/$whiteLabelId/user/$userId'),
);