import 'package:plugin_pjmei_components/data/usecases/usecases.dart';
import 'package:plugin_pjmei_components/domain/usecases/usecases.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

GetCnpj makeRemotePutCnpj() => RemoteGetCnpj(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/cnpj'),
  method: 'put'
);
