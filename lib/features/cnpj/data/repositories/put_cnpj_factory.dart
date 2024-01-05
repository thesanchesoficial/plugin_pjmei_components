import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_cnpj.dart';
import '../usecase/remote_get_cnpj.dart';

GetCnpj makeRemotePutCnpj() => RemoteGetCnpj(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/cnpj'),
  method: 'put'
);
