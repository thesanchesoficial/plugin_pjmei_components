import 'package:plugin_pjmei_components/data/usecases/mei_management/remote_get_notafiscal.dart';
import 'package:plugin_pjmei_components/domain/usecases/mei_management/get_notafiscal.dart';
import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';
import '../../http/http_client_factory.dart';

GetNotaFiscal makeRemoteGetNotaFiscal() => RemoteGetNotaFiscal(
      httpClient: makeHttpAdapter(),
      url: '${Environment.current!.baseUrl}venver/nota-fiscal/${companySM.company!.id}' + Environment.current!.apiKeyUrl,
    );
