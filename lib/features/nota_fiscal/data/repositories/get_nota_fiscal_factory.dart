import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_notafiscal.dart';
import '../usecase/remote_get_notafiscal.dart';

GetNotaFiscal makeRemoteGetNotaFiscal() => RemoteGetNotaFiscal(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/notification')
);