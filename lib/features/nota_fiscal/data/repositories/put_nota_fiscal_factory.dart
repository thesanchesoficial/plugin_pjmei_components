import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/update_nota_fiscal.dart';
import '../usecase/remote_update_nota_fiscal.dart';

UpdateNotaFiscal makeRemoteUpdateNotaFiscal() => RemoteUpdateNotaFiscal(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/notification')
);