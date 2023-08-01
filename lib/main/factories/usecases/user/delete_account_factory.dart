import 'package:plugin_pjmei_components/data/usecases/user/delete_account.dart';
import 'package:plugin_pjmei_components/domain/usecases/user/delete_account.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import '../../factories.dart';

DeleteAccount makeRemoteDeleteAccount() => RemoteDeleteAccount(
      httpClient: makeHttpAdapter(),
      url: makeApiUrl('venver/usuario/delete-account/${userSM.user?.id}'),
    );
