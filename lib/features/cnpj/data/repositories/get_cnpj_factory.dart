import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_cnpj.dart';
import '../usecase/remote_get_cnpj.dart';

GetCnpj makeRemoteGetCnpj(String cnpj, {bool ignoreAuth = false}) => RemoteGetCnpj(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl(ignoreAuth ? 'venver/cnpj/$cnpj' : 'venver/cnpj'),
);
