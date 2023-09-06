import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetCnpj makeRemoteGetCnpj(String cnpj, {bool ignoreAuth = false}) => RemoteGetCnpj(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl(ignoreAuth ? 'venver/cnpj/$cnpj' : 'venver/cnpj'),
);
