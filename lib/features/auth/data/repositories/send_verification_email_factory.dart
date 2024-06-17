import 'package:plugin_pjmei_components/features/auth/domain/usecase/send_verification_email.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../usecase/remote_send_verification_email.dart';

SendVerificationEmail makeRemoteSendVerifcationEmail() => RemoteSendVerificationEmail(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/sign-up/send-verification-email'),
);
