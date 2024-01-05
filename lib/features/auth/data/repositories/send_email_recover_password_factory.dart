import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

import '../../domain/usecase/send_email_recover_password.dart';
import '../usecase/remote_send_email_recover_password.dart';

SendEmailRecoverPassword makeRemoteSendEmailRecoverPassword() => RemoteSendEmailRecoverPassword(
  httpClient: makeHttpAdapter(), url: makeApiUrl('venver/login/reset-password'),
);
