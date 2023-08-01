import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

NewPassword makeRemoteNewPassword(String token) => RemoteNewPassword(
    httpClient: makeHttpAdapter(), url: makeApiUrl('venver/auth/reset/$token'));
