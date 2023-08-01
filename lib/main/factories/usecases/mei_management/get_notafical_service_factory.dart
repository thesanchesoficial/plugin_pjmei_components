import 'package:plugin_pjmei_components/data/usecases/mei_management/remote_notafiscal_service.dart';
import 'package:plugin_pjmei_components/domain/usecases/mei_management/get_notafiscal_service.dart';
import 'package:plugin_pjmei_components/main/factories/factories.dart';

import '../../../../config/framework/environment.dart';

GetNotaFiscalService makeRemoteGetNotaFiscalService() =>
    RemoteGetNotaFiscalService(
      httpClient: makeHttpAdapter(),
      url: '${Environment.current!.baseUrl}venver/nota-fiscal-service' +
          Environment.current!.apiKeyUrl,
    );
