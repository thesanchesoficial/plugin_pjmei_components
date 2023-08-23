import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

CheckIfUserExists makeRemoteCheckIfUserExistsByEmail(String email) => RemoteCheckIfUserExists(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/user/email/$email'),
);
