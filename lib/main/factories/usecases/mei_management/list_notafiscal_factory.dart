import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

GetNotaFiscal makeRemoteGetNotaFiscal() => RemoteGetNotaFiscal(
      httpClient: makeHttpAdapter(),
      url: '${Environment.current!.baseUrl}venver/nota-fiscal/${companySM.company!.id}' + Environment.current!.apiKeyUrl,
    );
