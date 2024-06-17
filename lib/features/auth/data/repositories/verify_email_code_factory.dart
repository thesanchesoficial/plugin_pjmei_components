import 'package:plugin_pjmei_components/features/auth/domain/usecase/verify_email_code.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../usecase/remote_verify_email_code.dart';

VerifyEmailCode makeRemoteVerifyEmailCode() => RemoteVerifyEmailCode(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/sign-up/verify-email-code'),
);
