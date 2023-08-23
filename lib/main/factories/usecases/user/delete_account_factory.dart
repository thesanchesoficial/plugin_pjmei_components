import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

DeleteAccount makeRemoteDeleteAccount() => RemoteDeleteAccount(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/user/${userSM.user?.id}'),
);
