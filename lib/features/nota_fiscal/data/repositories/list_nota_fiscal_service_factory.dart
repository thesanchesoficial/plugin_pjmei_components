import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../domain/usecase/get_notafiscal_service.dart';
import '../usecase/remote_notafiscal_service.dart';

GetNotaFiscalService makeRemoteGetListNotaFiscalService() => RemoteGetNotaFiscalService(
  httpClient: makeHttpAdapter(),
  url: makeApiUrl('venver/notification')
);