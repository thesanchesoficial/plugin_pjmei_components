import 'package:plugin_pjmei_components/plugin_pjmei_components.dart';

PostNotaFiscal makeRemotePostNotaFiscal() => RemotePostNotaFiscal(
      httpClient: makeHttpAdapter(),
      url: '${Environment.current!.baseUrl}venver/nota-fiscal' +
          Environment.current!.apiKeyUrl,
    );
