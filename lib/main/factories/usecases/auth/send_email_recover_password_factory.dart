import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

SendEmailRecoverPassword makeRemoteSendEmailRecoverPassword() =>
    RemoteSendEmailRecoverPassword(
        httpClient: makeHttpAdapter(), url: makeApiUrl('venver/auth/recover'));
