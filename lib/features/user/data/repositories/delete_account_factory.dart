import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../src/variables.dart';
import '../../domain/usecase/delete_account.dart';
import '../usecase/delete_account.dart';

DeleteAccount makeRemoteDeleteAccount() => RemoteDeleteAccount(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/user/${userSM.user?.id}'),
);
