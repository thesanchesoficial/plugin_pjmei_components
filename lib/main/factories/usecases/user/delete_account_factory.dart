import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

DeleteAccount makeRemoteDeleteAccount() => RemoteDeleteAccount(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/usuario/delete-account/${userSM.user?.id}'),
);
