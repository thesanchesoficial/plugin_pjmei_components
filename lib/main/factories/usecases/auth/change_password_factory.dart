import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

ChangePassword makeRemoteChangePassword(String id) => RemoteChangePassword(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/login/change-password'),
);
